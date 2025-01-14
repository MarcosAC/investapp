import 'package:investapp/modules/quote/domain/entities/quote.dart';
import 'package:investapp/modules/quote/domain/repositories/quote_repository.dart';

final class GetQuoteUseCase {
  final IRemoteQuoteRepository _repository;

  const GetQuoteUseCase(this._repository);

 Future<Quote> getAPI() async {
    final Quote response = await _repository.get();
    return response;
  }
}
