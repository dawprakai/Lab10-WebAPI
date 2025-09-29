<?php
header("Content-Type: application/json; charset=UTF-8");
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: GET, POST, PUT, DELETE");

$host = "localhost";
$user = "root";
$pass = ""; // เปลี่ยนถ้ามีรหัสผ่าน
$dbname = "camera_store";

$conn = new mysqli($host, $user, $pass, $dbname);
$conn->set_charset("utf8mb4");

if ($conn->connect_error) {
    die(json_encode(["error" => $conn->connect_error]));
}

$method = $_SERVER['REQUEST_METHOD'];
$id = isset($_GET['id']) ? intval($_GET['id']) : null;

switch ($method) {
    case 'GET':
        $sql = $id ? "SELECT * FROM products WHERE id=$id" : "SELECT * FROM products";
        $result = $conn->query($sql);
        if ($id) {
            echo json_encode($result->fetch_assoc(), JSON_UNESCAPED_UNICODE);
        } else {
            $data = [];
            while ($row = $result->fetch_assoc()) {
                $data[] = $row;
            }
            echo json_encode($data, JSON_UNESCAPED_UNICODE);
        }
        break;

    case 'POST':
        $data = json_decode(file_get_contents("php://input"), true);
        $name = $conn->real_escape_string($data['name']);
        $brand = $conn->real_escape_string($data['brand']);
        $price = floatval($data['price']);
        $stock = intval($data['stock']);
        $category = $conn->real_escape_string($data['category']);
        $image_url = $conn->real_escape_string($data['image_url']);
        $description = $conn->real_escape_string($data['description']);

        $sql = "INSERT INTO products (name, brand, price, stock, category, image_url, description)
                VALUES ('$name', '$brand', $price, $stock, '$category', '$image_url', '$description')";

        echo $conn->query($sql)
            ? json_encode(["message" => "Product created successfully"], JSON_UNESCAPED_UNICODE)
            : json_encode(["error" => $conn->error], JSON_UNESCAPED_UNICODE);
        break;

    case 'PUT':
        if (!$id) {
            echo json_encode(["error" => "Missing ID"], JSON_UNESCAPED_UNICODE);
            exit;
        }

        $data = json_decode(file_get_contents("php://input"), true);
        $name = $conn->real_escape_string($data['name']);
        $brand = $conn->real_escape_string($data['brand']);
        $price = floatval($data['price']);
        $stock = intval($data['stock']);
        $category = $conn->real_escape_string($data['category']);
        $image_url = $conn->real_escape_string($data['image_url']);
        $description = $conn->real_escape_string($data['description']);

        $sql = "UPDATE products SET 
                    name='$name',
                    brand='$brand',
                    price=$price,
                    stock=$stock,
                    category='$category',
                    image_url='$image_url',
                    description='$description'
                WHERE id=$id";

        echo $conn->query($sql)
            ? json_encode(["message" => "Product updated successfully"], JSON_UNESCAPED_UNICODE)
            : json_encode(["error" => $conn->error], JSON_UNESCAPED_UNICODE);
        break;

    case 'DELETE':
        if (!$id) {
            echo json_encode(["error" => "Missing ID"], JSON_UNESCAPED_UNICODE);
            exit;
        }

        $sql = "DELETE FROM products WHERE id=$id";

        echo $conn->query($sql)
            ? json_encode(["message" => "Product deleted successfully"], JSON_UNESCAPED_UNICODE)
            : json_encode(["error" => $conn->error], JSON_UNESCAPED_UNICODE);
        break;

    default:
        echo json_encode(["error" => "Unsupported method"], JSON_UNESCAPED_UNICODE);
        break;
}

$conn->close();
?>
