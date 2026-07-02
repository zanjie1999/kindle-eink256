.class final Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$resetScrollIfBooksChanged$1$1;
.super Ljava/lang/Object;
.source "LargeLibraryResumeWidgetProvider.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider;->resetScrollIfBooksChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $widget:Lcom/amazon/kcp/home/widget/resume/ResumeShovelerWidget;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/home/widget/resume/ResumeShovelerWidget;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$resetScrollIfBooksChanged$1$1;->$widget:Lcom/amazon/kcp/home/widget/resume/ResumeShovelerWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/LargeLibraryResumeWidgetProvider$resetScrollIfBooksChanged$1$1;->$widget:Lcom/amazon/kcp/home/widget/resume/ResumeShovelerWidget;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/widget/resume/ResumeShovelerWidget;->scrollToBeginning()V

    return-void
.end method
