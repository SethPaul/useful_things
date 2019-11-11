" wiki clean up macros
let @p=":%s&\\[<title>\\\(.*\\\)<\/title>&{\"page_title\":\"\\1\",&g"
let @i=":%s&<id>\\\(.*\\\)<\/id>&\"page_id\":\"\\1\",&g"
let @t=":%s&<timestamp>\\\(.*\\\)<\/timestamp>&\"wiki_revision_timestamp\":\"\\1\",&g"
let @m=":%s&^.*Infobox \\\(.*\\\)$&\"media_medium\":\"\\1\",&g"
let @c=":%s&\\[\\[Category:\\\(.*\\\)\\]\\]&\"\\2\",&g"
let @e=":%s&\|\\\s*\\\(.*\\\)=\\n&&g"
let @f=":%s&\|\\\s*\\\(.*\\\)\\\s*=\\\s*\\\(.*\\\)&\"\\1\":\\\[\"\\2\"\\\],&gc"
let @b=":%s&\[\\\[\\\]\]&&gc"

