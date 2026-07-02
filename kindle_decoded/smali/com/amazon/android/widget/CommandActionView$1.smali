.class Lcom/amazon/android/widget/CommandActionView$1;
.super Ljava/lang/Object;
.source "CommandActionView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/widget/CommandActionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/android/widget/CommandActionView;


# direct methods
.method constructor <init>(Lcom/amazon/android/widget/CommandActionView;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/amazon/android/widget/CommandActionView$1;->this$0:Lcom/amazon/android/widget/CommandActionView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/amazon/android/widget/CommandActionView$1;->this$0:Lcom/amazon/android/widget/CommandActionView;

    invoke-static {v0, p1}, Lcom/amazon/android/widget/CommandActionView;->access$000(Lcom/amazon/android/widget/CommandActionView;Landroid/view/View;)V

    return-void
.end method
