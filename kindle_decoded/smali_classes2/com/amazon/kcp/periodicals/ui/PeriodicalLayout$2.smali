.class Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$2;
.super Ljava/lang/Object;
.source "PeriodicalLayout.java"

# interfaces
.implements Lcom/amazon/foundation/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->openTextViewAt(IZZLcom/amazon/android/docviewer/mobi/PeriodicalsBookSearchResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

.field final synthetic val$shouldAnimate:Z


# direct methods
.method constructor <init>(Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;Z)V
    .locals 0

    .line 533
    iput-object p1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$2;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    iput-boolean p2, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$2;->val$shouldAnimate:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .line 537
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$2;->this$0:Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;

    iget-boolean v1, p0, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout$2;->val$shouldAnimate:Z

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/periodicals/ui/PeriodicalLayout;->openTextView(Z)V

    return-void
.end method
