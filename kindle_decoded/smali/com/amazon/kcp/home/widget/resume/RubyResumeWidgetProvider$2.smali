.class Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$2;
.super Ljava/lang/Object;
.source "RubyResumeWidgetProvider.java"

# interfaces
.implements Lcom/amazon/kindle/callback/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->createDataProvider(ILcom/amazon/kcp/library/LibraryContentFilter;)Lcom/amazon/kcp/home/widget/resume/LibraryCardDataProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/callback/ICallback<",
        "Lcom/amazon/kcp/callback/ResumeWidgetResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$2;->this$0:Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;

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
            "Lcom/amazon/kcp/callback/ResumeWidgetResult;",
            ">;)V"
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider$2;->this$0:Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/home/widget/resume/RubyResumeWidgetProvider;->onDataChange(Lcom/amazon/kindle/callback/OperationResult;)V

    return-void
.end method
