.class Lcom/amazon/krf/platform/KRFView$1;
.super Ljava/lang/Object;
.source "KRFView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/krf/platform/KRFView;->finalize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/krf/platform/KRFView;


# direct methods
.method constructor <init>(Lcom/amazon/krf/platform/KRFView;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/amazon/krf/platform/KRFView$1;->this$0:Lcom/amazon/krf/platform/KRFView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFView$1;->this$0:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/KRFView;->dispose()V

    return-void
.end method
