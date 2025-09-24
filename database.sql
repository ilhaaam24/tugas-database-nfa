CREATE TABLE produk (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    kode VARCHAR(10) UNIQUE,
    nama VARCHAR(45) NOT NULL,
    harga_beli DOUBLE NOT NULL,
    harga_jual DOUBLE NOT NULL,
    stok INT DEFAULT 0,
    min_stok INT DEFAULT 0,
    jenis_produk_id INT NOT NULL,
    FOREIGN KEY (jenis_produk_id) REFERENCES jenis_produk(id),
);

CREATE TABLE pesanan_items (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    pesanan_id INT NOT NULL,
    produk_id INT NOT NULL,
    qty INT NOT NULL,
    harga DOUBLE NOT NULL,
    FOREIGN KEY (pesanan_id) REFERENCES pesanan(id),
    FOREIGN KEY (produk_id) REFERENCES produk(id)
);

CREATE TABLE vendor (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nama VARCHAR(40) NOT NULL,
    nomor VARCHAR(4) NOT NULL,
    kota VARCHAR(30),
    kontak VARCHAR(30)
);

CREATE TABLE pembelian (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    tanggal VARCHAR(45) NOT NULL,
    nomor VARCHAR(10) NOT NULL,
    jumlah DOUBLE NOT NULL,
    juharga DOUBLE NOT NULL,
    produk_id INT NOT NULL,
    vendor_id INT NOT NULL,
    FOREIGN KEY (produk_id) REFERENCES produk(id),
    FOREIGN KEY (vendor_id) REFERENCES vendor(id)
);
