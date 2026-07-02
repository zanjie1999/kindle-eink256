.class public final Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider$onContentDelete$1;
.super Ljava/lang/Object;
.source "LibraryCardDataProvider.kt"

# interfaces
.implements Lcom/amazon/kcp/home/widget/resume/LibraryLoadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;->onContentDelete(Lcom/amazon/kindle/content/ContentDelete;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 194
    iput-object p1, p0, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider$onContentDelete$1;->this$0:Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLibraryLoad(Z)V
    .locals 2

    .line 196
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider$onContentDelete$1;->this$0:Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;

    invoke-static {p1}, Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;->access$getMessageQueue$p(Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p1

    new-instance v0, Lcom/amazon/kcp/home/widget/resume/ResumeWidgetUpdateEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/home/widget/resume/ResumeWidgetUpdateEvent;-><init>(I)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method
