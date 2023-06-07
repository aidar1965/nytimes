# nytimes

Demo App

API: https://developer.nytimes.com/docs/articlesearch-product/1/overview

Stack: 
Dio (http requests),
Auto Route (navigation),
Di (dependency injection),
Isar (local db),
Bloc with Freezed (state management)


1. Showing a list of articles.
2. Pagination.
3. Filtering articles by sections.
4. Display the full version of the article in WebView
5. Periodic update list of articles.
6. Saving last 40 articles to Isar db
7. Select and save locally favorite sections. Background periodic fetch new articles in this sections.
  Local notification is displayed on new article published in selected sections. The article is displayed 
  on click on the notification.
8. Search for articles that are saved locally.

