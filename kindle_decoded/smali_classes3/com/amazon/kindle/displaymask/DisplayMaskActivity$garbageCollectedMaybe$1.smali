.class public final Lcom/amazon/kindle/displaymask/DisplayMaskActivity$garbageCollectedMaybe$1;
.super Ljava/lang/Object;
.source "FoldableDebug.kt"

# interfaces
.implements Lcom/amazon/kindle/displaymask/ScreenModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/displaymask/DisplayMaskActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/displaymask/DisplayMaskActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/displaymask/DisplayMaskActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lcom/amazon/kindle/displaymask/DisplayMaskActivity$garbageCollectedMaybe$1;->this$0:Lcom/amazon/kindle/displaymask/DisplayMaskActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didEnterDualScreenMode()V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/amazon/kindle/displaymask/DisplayMaskActivity$garbageCollectedMaybe$1;->this$0:Lcom/amazon/kindle/displaymask/DisplayMaskActivity;

    invoke-static {v0}, Lcom/amazon/kindle/displaymask/DisplayMaskActivity;->access$updateTextViewText(Lcom/amazon/kindle/displaymask/DisplayMaskActivity;)V

    return-void
.end method

.method public didEnterSingleScreenMode()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/amazon/kindle/displaymask/DisplayMaskActivity$garbageCollectedMaybe$1;->this$0:Lcom/amazon/kindle/displaymask/DisplayMaskActivity;

    invoke-static {v0}, Lcom/amazon/kindle/displaymask/DisplayMaskActivity;->access$updateTextViewText(Lcom/amazon/kindle/displaymask/DisplayMaskActivity;)V

    return-void
.end method
