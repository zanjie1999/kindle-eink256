.class Lcom/amazon/kcp/periodicals/ui/PeriodicalLayoutForStandAlone$2;
.super Ljava/lang/Object;
.source "PeriodicalLayoutForStandAlone.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/periodicals/ui/PeriodicalLayoutForStandAlone;->openTextViewAt(IZZLcom/amazon/android/docviewer/mobi/PeriodicalsBookSearchResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayoutForStandAlone;

.field final synthetic val$shouldAnimate:Z


# direct methods
.method constructor <init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayoutForStandAlone;Z)V
    .locals 0

    .line 453
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayoutForStandAlone$2;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayoutForStandAlone;

    iput-boolean p2, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayoutForStandAlone$2;->val$shouldAnimate:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .line 457
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayoutForStandAlone$2;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayoutForStandAlone;

    iget-boolean v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayoutForStandAlone$2;->val$shouldAnimate:Z

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->openTextView(Z)V

    return-void
.end method
