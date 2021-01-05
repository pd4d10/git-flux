import 'package:flutter/material.dart';
import 'package:git_touch/models/auth.dart';
import 'package:git_touch/models/gitee.dart';
import 'package:git_touch/scaffolds/list_stateful.dart';
import 'package:git_touch/widgets/app_bar_title.dart';
import 'package:git_touch/widgets/issue_item.dart';
import 'package:provider/provider.dart';

class GePullsScreen extends StatelessWidget {
  final String owner;
  final String name;
  final bool isPr;
  GePullsScreen(this.owner, this.name, {this.isPr = false});

  @override
  Widget build(BuildContext context) {
    return ListStatefulScaffold<GiteePull, int>(
      title: AppBarTitle(isPr ? 'Pull Requests' : 'Issues'),
      fetch: (page) async {
        final res = await context
            .read<AuthModel>()
            .fetchGiteeWithPage('/repos/$owner/$name/pulls', page: page);
        return ListPayload(
          cursor: res.cursor,
          hasMore: res.hasMore,
          items: [for (var v in res.data) GiteePull.fromJson(v)],
        );
      },
      itemBuilder: (p) => IssueItem(
        author: p.user.login,
        avatarUrl: p.user.avatarUrl,
        commentCount: 0, // fix this
        subtitle: p.number.toString(),
        title: p.title,
        updatedAt: DateTime.parse(p.updatedAt),
        url: p.htmlUrl,
      ),
    );
  }
}