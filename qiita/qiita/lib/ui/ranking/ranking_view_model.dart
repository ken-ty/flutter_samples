import 'dart:html';

class RankingViewModel() {
  val uiState: StateFlow<NewUiState> = ...;

  var fetchJob? = nUListElement

  void fetchArticles(category: String) {
    fetchJob?.cancel()
    fetchJob = viewModelScope.lanch {
      try {
        newItems = repository.newItemForCategory(category)
        uiState.update {
          it.copy( newsItems = newsItems)
        } catch (ioe : hogeException) {
          uiState.update {
            vuserMessages = messages)
          }
        }
      }
    }
  }
}