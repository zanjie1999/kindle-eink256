.class Lcom/amazon/kindle/annotation/AnnotationsManager$1;
.super Ljava/lang/Object;
.source "AnnotationsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/annotation/AnnotationsManager;->cleanupAndProcessSidecars()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/annotation/AnnotationsManager;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/annotation/AnnotationsManager;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/amazon/kindle/annotation/AnnotationsManager$1;->this$0:Lcom/amazon/kindle/annotation/AnnotationsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/amazon/kindle/annotation/AnnotationsManager$1;->this$0:Lcom/amazon/kindle/annotation/AnnotationsManager;

    invoke-static {v0}, Lcom/amazon/kindle/annotation/AnnotationsManager;->access$000(Lcom/amazon/kindle/annotation/AnnotationsManager;)V

    .line 164
    iget-object v0, p0, Lcom/amazon/kindle/annotation/AnnotationsManager$1;->this$0:Lcom/amazon/kindle/annotation/AnnotationsManager;

    invoke-static {v0}, Lcom/amazon/kindle/annotation/AnnotationsManager;->access$100(Lcom/amazon/kindle/annotation/AnnotationsManager;)V

    return-void
.end method
