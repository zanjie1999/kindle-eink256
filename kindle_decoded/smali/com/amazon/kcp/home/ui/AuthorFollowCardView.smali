.class public final Lcom/amazon/kcp/home/ui/AuthorFollowCardView;
.super Lcom/amazon/kcp/home/ui/HomeCardView;
.source "AuthorFollowCardView.kt"


# instance fields
.field public authorDescTextView:Landroid/widget/TextView;

.field public authorNameTextView:Landroid/widget/TextView;

.field public avatarImageView:Landroid/widget/ImageView;

.field public followButton:Lcom/amazon/kcp/home/ui/TwoStateButton;

.field public followButtonIcon:Landroid/widget/ImageView;

.field public followButtonText:Landroid/widget/TextView;

.field public progressBar:Landroid/widget/ProgressBar;

.field public readMoreButton:Lcom/amazon/kcp/home/ui/TwoStateButton;

.field public subTitleTextView:Landroid/widget/TextView;

.field public titleTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0, p1}, Lcom/amazon/kcp/home/ui/HomeCardView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attributeSet"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/home/ui/HomeCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final getAuthorDescTextView()Landroid/widget/TextView;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/AuthorFollowCardView;->authorDescTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "authorDescTextView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getAuthorNameTextView()Landroid/widget/TextView;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/AuthorFollowCardView;->authorNameTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "authorNameTextView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getAvatarImageView()Landroid/widget/ImageView;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/AuthorFollowCardView;->avatarImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "avatarImageView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getFollowButton()Lcom/amazon/kcp/home/ui/TwoStateButton;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/AuthorFollowCardView;->followButton:Lcom/amazon/kcp/home/ui/TwoStateButton;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "followButton"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getFollowButtonIcon()Landroid/widget/ImageView;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/AuthorFollowCardView;->followButtonIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "followButtonIcon"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getFollowButtonText()Landroid/widget/TextView;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/AuthorFollowCardView;->followButtonText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "followButtonText"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getProgressBar()Landroid/widget/ProgressBar;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/AuthorFollowCardView;->progressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "progressBar"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getReadMoreButton()Lcom/amazon/kcp/home/ui/TwoStateButton;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/AuthorFollowCardView;->readMoreButton:Lcom/amazon/kcp/home/ui/TwoStateButton;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "readMoreButton"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getSubTitleTextView()Landroid/widget/TextView;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/AuthorFollowCardView;->subTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "subTitleTextView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final getTitleTextView()Landroid/widget/TextView;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/amazon/kcp/home/ui/AuthorFollowCardView;->titleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v0, "titleTextView"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 32
    invoke-super {p0}, Lcom/amazon/kcp/home/ui/HomeCardView;->onFinishInflate()V

    .line 34
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->home_card_header_title:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.home_card_header_title)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/home/ui/AuthorFollowCardView;->titleTextView:Landroid/widget/TextView;

    .line 35
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->home_card_header_desc:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.home_card_header_desc)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/home/ui/AuthorFollowCardView;->subTitleTextView:Landroid/widget/TextView;

    .line 36
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->author_follow_avatar:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.author_follow_avatar)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/amazon/kcp/home/ui/AuthorFollowCardView;->avatarImageView:Landroid/widget/ImageView;

    .line 37
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->author_follow_name:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.author_follow_name)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/home/ui/AuthorFollowCardView;->authorNameTextView:Landroid/widget/TextView;

    .line 38
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->author_follow_desc:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.author_follow_desc)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/home/ui/AuthorFollowCardView;->authorDescTextView:Landroid/widget/TextView;

    .line 39
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->author_follow_more_button:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.author_follow_more_button)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/amazon/kcp/home/ui/TwoStateButton;

    iput-object v0, p0, Lcom/amazon/kcp/home/ui/AuthorFollowCardView;->readMoreButton:Lcom/amazon/kcp/home/ui/TwoStateButton;

    .line 40
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->author_follow_following_button:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.author_follow_following_button)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/amazon/kcp/home/ui/TwoStateButton;

    iput-object v0, p0, Lcom/amazon/kcp/home/ui/AuthorFollowCardView;->followButton:Lcom/amazon/kcp/home/ui/TwoStateButton;

    .line 41
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->author_follow_button_icon:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.author_follow_button_icon)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/amazon/kcp/home/ui/AuthorFollowCardView;->followButtonIcon:Landroid/widget/ImageView;

    .line 42
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->author_follow_button_text:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.author_follow_button_text)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/amazon/kcp/home/ui/AuthorFollowCardView;->followButtonText:Landroid/widget/TextView;

    .line 43
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->author_follow_progress_bar:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.author_follow_progress_bar)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/amazon/kcp/home/ui/AuthorFollowCardView;->progressBar:Landroid/widget/ProgressBar;

    return-void
.end method

.method public final setAuthorDescTextView(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iput-object p1, p0, Lcom/amazon/kcp/home/ui/AuthorFollowCardView;->authorDescTextView:Landroid/widget/TextView;

    return-void
.end method

.method public final setAuthorNameTextView(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iput-object p1, p0, Lcom/amazon/kcp/home/ui/AuthorFollowCardView;->authorNameTextView:Landroid/widget/TextView;

    return-void
.end method

.method public final setAvatarImageView(Landroid/widget/ImageView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iput-object p1, p0, Lcom/amazon/kcp/home/ui/AuthorFollowCardView;->avatarImageView:Landroid/widget/ImageView;

    return-void
.end method

.method public final setFollowButton(Lcom/amazon/kcp/home/ui/TwoStateButton;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    iput-object p1, p0, Lcom/amazon/kcp/home/ui/AuthorFollowCardView;->followButton:Lcom/amazon/kcp/home/ui/TwoStateButton;

    return-void
.end method

.method public final setFollowButtonIcon(Landroid/widget/ImageView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    iput-object p1, p0, Lcom/amazon/kcp/home/ui/AuthorFollowCardView;->followButtonIcon:Landroid/widget/ImageView;

    return-void
.end method

.method public final setFollowButtonText(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iput-object p1, p0, Lcom/amazon/kcp/home/ui/AuthorFollowCardView;->followButtonText:Landroid/widget/TextView;

    return-void
.end method

.method public final setProgressBar(Landroid/widget/ProgressBar;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iput-object p1, p0, Lcom/amazon/kcp/home/ui/AuthorFollowCardView;->progressBar:Landroid/widget/ProgressBar;

    return-void
.end method

.method public final setReadMoreButton(Lcom/amazon/kcp/home/ui/TwoStateButton;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iput-object p1, p0, Lcom/amazon/kcp/home/ui/AuthorFollowCardView;->readMoreButton:Lcom/amazon/kcp/home/ui/TwoStateButton;

    return-void
.end method

.method public final setSubTitleTextView(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iput-object p1, p0, Lcom/amazon/kcp/home/ui/AuthorFollowCardView;->subTitleTextView:Landroid/widget/TextView;

    return-void
.end method

.method public final setTitleTextView(Landroid/widget/TextView;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iput-object p1, p0, Lcom/amazon/kcp/home/ui/AuthorFollowCardView;->titleTextView:Landroid/widget/TextView;

    return-void
.end method
