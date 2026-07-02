.class public final Lcom/amazon/kindle/recaps/activity/RecapsActivity$onCreate$8;
.super Ljava/lang/Object;
.source "RecapsActivity.kt"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/recaps/activity/RecapsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nRecapsActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RecapsActivity.kt\ncom/amazon/kindle/recaps/activity/RecapsActivity$onCreate$8\n*L\n1#1,459:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $chromeHeader:Landroid/widget/TextView;

.field final synthetic $isDarkMode:Z

.field final synthetic $tocButton:Landroid/widget/ToggleButton;

.field final synthetic $tocTip:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/amazon/kindle/recaps/activity/RecapsActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/recaps/activity/RecapsActivity;Landroid/widget/TextView;ZLandroid/widget/ToggleButton;Landroid/widget/ImageView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "Z",
            "Landroid/widget/ToggleButton;",
            "Landroid/widget/ImageView;",
            ")V"
        }
    .end annotation

    .line 199
    iput-object p1, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity$onCreate$8;->this$0:Lcom/amazon/kindle/recaps/activity/RecapsActivity;

    iput-object p2, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity$onCreate$8;->$chromeHeader:Landroid/widget/TextView;

    iput-boolean p3, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity$onCreate$8;->$isDarkMode:Z

    iput-object p4, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity$onCreate$8;->$tocButton:Landroid/widget/ToggleButton;

    iput-object p5, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity$onCreate$8;->$tocTip:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 5

    const-string v0, "buttonView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_6

    .line 202
    iget-object p1, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity$onCreate$8;->this$0:Lcom/amazon/kindle/recaps/activity/RecapsActivity;

    sget p2, Lcom/amazon/kindle/recaps/R$id;->recaps_view:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 204
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string p2, "phone"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 206
    iget-object p1, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity$onCreate$8;->this$0:Lcom/amazon/kindle/recaps/activity/RecapsActivity;

    iget-object p2, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity$onCreate$8;->$chromeHeader:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    const-string v0, "chromeHeader.text"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->access$setCurrentChapterHeader$p(Lcom/amazon/kindle/recaps/activity/RecapsActivity;Ljava/lang/CharSequence;)V

    .line 207
    iget-object p1, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity$onCreate$8;->$chromeHeader:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity$onCreate$8;->this$0:Lcom/amazon/kindle/recaps/activity/RecapsActivity;

    sget v0, Lcom/amazon/kindle/recaps/R$string;->kre_recaps_recaps_label:I

    invoke-virtual {p2, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    :cond_0
    iget-object p1, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity$onCreate$8;->this$0:Lcom/amazon/kindle/recaps/activity/RecapsActivity;

    invoke-static {p1}, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->access$getBookViewRoot$p(Lcom/amazon/kindle/recaps/activity/RecapsActivity;)Landroid/view/ViewGroup;

    move-result-object p1

    const/4 p2, 0x4

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setImportantForAccessibility(I)V

    .line 213
    iget-object p1, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity$onCreate$8;->this$0:Lcom/amazon/kindle/recaps/activity/RecapsActivity;

    invoke-static {p1}, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->access$getBookViewRoot$p(Lcom/amazon/kindle/recaps/activity/RecapsActivity;)Landroid/view/ViewGroup;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 214
    iget-object p1, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity$onCreate$8;->this$0:Lcom/amazon/kindle/recaps/activity/RecapsActivity;

    invoke-static {p1}, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->access$getBookViewRoot$p(Lcom/amazon/kindle/recaps/activity/RecapsActivity;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 217
    iget-object p1, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity$onCreate$8;->this$0:Lcom/amazon/kindle/recaps/activity/RecapsActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/recaps/R$id;->tocFragment:I

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_1

    .line 219
    new-instance p1, Lcom/amazon/kindle/recaps/fragments/TocFragment;

    invoke-direct {p1}, Lcom/amazon/kindle/recaps/fragments/TocFragment;-><init>()V

    .line 220
    iget-object v0, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity$onCreate$8;->this$0:Lcom/amazon/kindle/recaps/activity/RecapsActivity;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 221
    sget v1, Lcom/amazon/kindle/recaps/R$anim;->enter_from_top:I

    sget v2, Lcom/amazon/kindle/recaps/R$anim;->exit_to_top:I

    .line 222
    sget v3, Lcom/amazon/kindle/recaps/R$anim;->enter_from_top:I

    sget v4, Lcom/amazon/kindle/recaps/R$anim;->exit_to_top:I

    .line 221
    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/fragment/app/FragmentTransaction;->setCustomAnimations(IIII)Landroidx/fragment/app/FragmentTransaction;

    .line 223
    sget v1, Lcom/amazon/kindle/recaps/R$id;->tocFragment:I

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    const/4 p1, 0x0

    .line 224
    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    .line 225
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 226
    sget-object p1, Lcom/amazon/kindle/recaps/metrics/RecapsFastMetricsClient;->INSTANCE:Lcom/amazon/kindle/recaps/metrics/RecapsFastMetricsClient;

    sget-object v0, Lcom/amazon/kindle/recaps/metrics/RecapsUserAction;->RECAPS_TABLE_OF_CONTENTS_OPENED:Lcom/amazon/kindle/recaps/metrics/RecapsUserAction;

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/recaps/metrics/RecapsFastMetricsClient;->recordRecapsUserAction(Lcom/amazon/kindle/recaps/metrics/RecapsUserAction;)V

    .line 229
    :cond_1
    iget-boolean p1, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity$onCreate$8;->$isDarkMode:Z

    if-eqz p1, :cond_2

    .line 230
    iget-object p1, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity$onCreate$8;->$tocButton:Landroid/widget/ToggleButton;

    sget v0, Lcom/amazon/kindle/recaps/R$drawable;->toc_open_dark:I

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setButtonDrawable(I)V

    goto :goto_0

    .line 232
    :cond_2
    iget-object p1, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity$onCreate$8;->$tocButton:Landroid/widget/ToggleButton;

    sget v0, Lcom/amazon/kindle/recaps/R$drawable;->toc_open_light:I

    invoke-virtual {p1, v0}, Landroid/widget/ToggleButton;->setButtonDrawable(I)V

    .line 234
    :goto_0
    iget-object p1, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity$onCreate$8;->$tocTip:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 235
    :cond_3
    iget-object p1, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity$onCreate$8;->this$0:Lcom/amazon/kindle/recaps/activity/RecapsActivity;

    invoke-static {p1}, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->access$getTocContainerView$p(Lcom/amazon/kindle/recaps/activity/RecapsActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    .line 204
    :cond_4
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 202
    :cond_5
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.view.View"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 237
    :cond_6
    iget-object p1, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity$onCreate$8;->this$0:Lcom/amazon/kindle/recaps/activity/RecapsActivity;

    invoke-static {p1}, Lcom/amazon/kindle/recaps/activity/RecapsActivity;->access$closeTocFragment(Lcom/amazon/kindle/recaps/activity/RecapsActivity;)V

    :goto_1
    return-void
.end method
