import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:investapp/modules/user/bloc/user_bloc.dart';
import 'package:investapp/shared/shared.dart';

final class UserImageProfileWidget extends BaseWidget {
  const UserImageProfileWidget({super.key});

  @override
  Widget builder(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(
      builder: (context, state) {
        return switch(state.runtimeType) {
          UserLoginState => _buildImageProfile(),
          UserAuthProcessState => _buildLoading(),
          _ => _buildImageProfile(),
        };
      },
    );
  }

  Widget _buildImageProfile() {
    return CircleAvatar(
      radius: 20.r,
      backgroundColor: theme.colorScheme.primary,
      backgroundImage: CachedNetworkImageProvider(
        "https://www.thispersondoesnotexist.com/",
      ),
    );
  }

  Widget _buildLoading() {
    return SizedBox(
      width: 50.w,
      height: 50.w,
      child: const CircularProgressIndicator(),
    );
  }
}