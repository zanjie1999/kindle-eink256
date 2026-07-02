.class final Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor$execute$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "OkHttpWebRequestExecutor.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor;->execute(Lcom/amazon/kindle/webservices/IWebRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $it:Ljava/lang/String;

.field final synthetic this$0:Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor$execute$$inlined$let$lambda$1;->$it:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor$execute$$inlined$let$lambda$1;->this$0:Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 183
    iget-object v0, p0, Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor$execute$$inlined$let$lambda$1;->this$0:Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor;

    invoke-static {v0}, Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor;->access$getContext$p(Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kindle/webservices/OkHttpWebRequestExecutor$execute$$inlined$let$lambda$1;->$it:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
