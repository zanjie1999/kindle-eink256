.class final Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer$updateThemesCallback$1$1;
.super Ljava/lang/Object;
.source "AaThemesContainer.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer$updateThemesCallback$1;->invoke()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer$updateThemesCallback$1;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer$updateThemesCallback$1;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer$updateThemesCallback$1$1;->this$0:Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer$updateThemesCallback$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 28
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer$updateThemesCallback$1$1;->this$0:Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer$updateThemesCallback$1;

    iget-object v0, v0, Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer$updateThemesCallback$1;->this$0:Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;

    invoke-static {v0}, Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;->access$getThemesManager$p(Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;)Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->getThemesCopy()Ljava/util/ArrayList;

    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer$updateThemesCallback$1$1;->this$0:Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer$updateThemesCallback$1;

    iget-object v1, v1, Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer$updateThemesCallback$1;->this$0:Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;->access$setCurrentlyCheckedTheme$p(Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;Lcom/amazon/kindle/viewoptions/themes/AaThemeView;)V

    .line 30
    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer$updateThemesCallback$1$1;->this$0:Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer$updateThemesCallback$1;

    iget-object v1, v1, Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer$updateThemesCallback$1;->this$0:Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 31
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/viewoptions/themes/AaTheme;

    .line 32
    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer$updateThemesCallback$1$1;->this$0:Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer$updateThemesCallback$1;

    iget-object v2, v2, Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer$updateThemesCallback$1;->this$0:Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;

    const-string/jumbo v3, "theme"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v1}, Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;->access$addOrReplaceTheme(Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;Lcom/amazon/kindle/viewoptions/themes/AaTheme;)V

    goto :goto_0

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer$updateThemesCallback$1$1;->this$0:Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer$updateThemesCallback$1;

    iget-object v0, v0, Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer$updateThemesCallback$1;->this$0:Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;

    invoke-static {v0}, Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;->access$getThemesManager$p(Lcom/amazon/kindle/viewoptions/themes/AaThemesContainer;)Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/themes/AaThemesManager;->recordPerfEndMarker()V

    return-void
.end method
