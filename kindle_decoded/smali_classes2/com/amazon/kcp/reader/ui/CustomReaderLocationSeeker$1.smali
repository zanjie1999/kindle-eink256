.class Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker$1;
.super Ljava/lang/Object;
.source "CustomReaderLocationSeeker.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker$1;->this$0:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    .line 209
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker$1;->this$0:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->access$000(Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 210
    invoke-interface {v1, p1, p2, p3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    goto :goto_0

    .line 212
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker$1;->this$0:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->access$100(Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 217
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker$1;->this$0:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->access$000(Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 218
    invoke-interface {v1, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker$1;->this$0:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->access$000(Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 225
    invoke-interface {v1, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    goto :goto_0

    :cond_0
    return-void
.end method
