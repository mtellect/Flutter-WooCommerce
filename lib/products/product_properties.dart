enum ProductDownload { id, name, file }

enum ProductDimension { length, width, height }

enum ProductCategory { id, name, slug }

enum ProductTag { id, name, slug }

enum ProductImage {
  id,
  date_created,
  date_created_gmt,
  date_modified,
  src,
  name,
  alt
}

enum ProductAttribute { id, name, position, visible, variation, options }

enum ProductDefault { id, name, option }

enum ProductMetaData { id, key, value }
