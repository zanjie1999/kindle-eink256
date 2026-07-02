.class Lcom/amazon/kindle/nln/BaseNonLinearFragment$ThumbnailPageClickedListener;
.super Ljava/lang/Object;
.source "BaseNonLinearFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/nln/BaseNonLinearFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThumbnailPageClickedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/nln/BaseNonLinearFragment;


# direct methods
.method private constructor <init>(Lcom/amazon/kindle/nln/BaseNonLinearFragment;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment$ThumbnailPageClickedListener;->this$0:Lcom/amazon/kindle/nln/BaseNonLinearFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kindle/nln/BaseNonLinearFragment;Lcom/amazon/kindle/nln/BaseNonLinearFragment$1;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcom/amazon/kindle/nln/BaseNonLinearFragment$ThumbnailPageClickedListener;-><init>(Lcom/amazon/kindle/nln/BaseNonLinearFragment;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/amazon/kindle/nln/BaseNonLinearFragment$ThumbnailPageClickedListener;->this$0:Lcom/amazon/kindle/nln/BaseNonLinearFragment;

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/nln/BaseNonLinearFragment;->onPageClicked(Landroid/view/View;)V

    return-void
.end method
