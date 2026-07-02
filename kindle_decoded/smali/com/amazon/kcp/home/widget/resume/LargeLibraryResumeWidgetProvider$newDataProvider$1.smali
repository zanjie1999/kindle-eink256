.class public final Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$newDataProvider$1;
.super Ljava/lang/Object;
.source "LargeLibraryResumeWidgetProvider.kt"

# interfaces
.implements Lcom/amazon/kcp/home/widget/resume/ItemsCountChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;->newDataProvider()Lcom/amazon/kcp/library/fragments/LargeLibraryCardDataProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 125
    iput-object p1, p0, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$newDataProvider$1;->this$0:Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemsCountChanged(II)V
    .locals 2

    .line 134
    invoke-static {p1}, Lkotlin/math/MathKt;->getSign(I)I

    move-result v0

    invoke-static {p2}, Lkotlin/math/MathKt;->getSign(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    if-ne p1, p2, :cond_1

    .line 135
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$newDataProvider$1;->this$0:Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;

    invoke-static {p1}, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;->access$getResumeWidget$p(Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;)Lcom/amazon/kcp/home/widget/resume/ResumeShovelerWidget;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/amazon/kcp/home/widget/resume/ResumeShovelerWidget;->refreshResumeWidgetView()V

    :cond_1
    return-void
.end method
