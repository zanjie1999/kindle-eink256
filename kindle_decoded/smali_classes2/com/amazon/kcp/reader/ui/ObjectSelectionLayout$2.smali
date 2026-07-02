.class Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout$2;
.super Ljava/lang/Object;
.source "ObjectSelectionLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->onObjectSelectionModelEvent(Lcom/amazon/android/docviewer/ObjectSelectionModelEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout$2;->this$0:Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout$2;->this$0:Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->onSelectionStateChanged()V

    return-void
.end method
