.class Lcom/amazon/kindle/rendering/KRIFLayout$3;
.super Ljava/lang/Object;
.source "KRIFLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/rendering/KRIFLayout;->onAnnotationManagerEvent(Lcom/amazon/kindle/event/AnnotationManagerEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/rendering/KRIFLayout;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/rendering/KRIFLayout;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFLayout$3;->this$0:Lcom/amazon/kindle/rendering/KRIFLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFLayout$3;->this$0:Lcom/amazon/kindle/rendering/KRIFLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/BookLayout;->refresh()V

    return-void
.end method
