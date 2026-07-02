.class Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$1;
.super Ljava/lang/Object;
.source "RubyResumeWidgetProvider.java"

# interfaces
.implements Lcom/amazon/kindle/callback/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;-><init>(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/callback/ICallback<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$1;->this$0:Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/amazon/kindle/callback/OperationResult;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/callback/OperationResult<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$1;->this$0:Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;

    invoke-virtual {p1}, Lcom/amazon/kindle/callback/OperationResult;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->onLibraryCounterUpdated(I)V

    return-void
.end method
