json.array!(@facturas) do |factura|
  json.extract! factura, :id, :Nombres, :Apellido, :Cedula, :Producto, :Precio, :Iva, :Descuento
  json.url factura_url(factura, format: :json)
end
