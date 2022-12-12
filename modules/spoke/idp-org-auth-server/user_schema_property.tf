resource "okta_user_schema_property" "favorite_music" {
  index       = "favoriteMusic"
  title       = "favoriteMusic"
  type        = "string"
  description = "User Favorite Music"
  permissions = "READ_WRITE"
}
