.class Lcom/amazon/android/widget/TitleContainerUtil$1$1;
.super Ljava/lang/Object;
.source "TitleContainerUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/widget/TitleContainerUtil$1;->onPostExecute(Lcom/amazon/kindle/krx/ui/IButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/widget/TitleContainerUtil$1;

.field final synthetic val$buttonModel:Lcom/amazon/kindle/krx/ui/IButton;


# direct methods
.method constructor <init>(Lcom/amazon/android/widget/TitleContainerUtil$1;Lcom/amazon/kindle/krx/ui/IButton;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/amazon/android/widget/TitleContainerUtil$1$1;->this$0:Lcom/amazon/android/widget/TitleContainerUtil$1;

    iput-object p2, p0, Lcom/amazon/android/widget/TitleContainerUtil$1$1;->val$buttonModel:Lcom/amazon/kindle/krx/ui/IButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 189
    iget-object p1, p0, Lcom/amazon/android/widget/TitleContainerUtil$1$1;->val$buttonModel:Lcom/amazon/kindle/krx/ui/IButton;

    iget-object v0, p0, Lcom/amazon/android/widget/TitleContainerUtil$1$1;->this$0:Lcom/amazon/android/widget/TitleContainerUtil$1;

    invoke-static {v0}, Lcom/amazon/android/widget/TitleContainerUtil$1;->access$000(Lcom/amazon/android/widget/TitleContainerUtil$1;)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/ui/IButton;->onClick(Ljava/lang/Object;)V

    return-void
.end method
