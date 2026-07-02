.class Lcom/amazon/kcp/ui/brochure/BrochureActivity$1;
.super Ljava/lang/Object;
.source "BrochureActivity.java"

# interfaces
.implements Lcom/amazon/kcp/ui/brochure/IBrochureDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/ui/brochure/BrochureActivity;->initializeBrochureViewGroup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/ui/brochure/BrochureActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/ui/brochure/BrochureActivity;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/amazon/kcp/ui/brochure/BrochureActivity$1;->this$0:Lcom/amazon/kcp/ui/brochure/BrochureActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public donePressed()V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/amazon/kcp/ui/brochure/BrochureActivity$1;->this$0:Lcom/amazon/kcp/ui/brochure/BrochureActivity;

    invoke-static {v0}, Lcom/amazon/kcp/ui/brochure/BrochureActivity;->access$000(Lcom/amazon/kcp/ui/brochure/BrochureActivity;)V

    return-void
.end method
