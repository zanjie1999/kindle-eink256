.class Lcom/amazon/kcp/info/TutorialMappings$OverflowLayoutMapping;
.super Ljava/lang/Object;
.source "TutorialMappings.java"

# interfaces
.implements Lcom/amazon/kcp/info/TutorialMappings$LayoutMapping;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/info/TutorialMappings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OverflowLayoutMapping"
.end annotation


# instance fields
.field private final noOverflowLayoutId:I

.field private final overflowLayoutId:I


# direct methods
.method constructor <init>(II)V
    .locals 0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput p1, p0, Lcom/amazon/kcp/info/TutorialMappings$OverflowLayoutMapping;->overflowLayoutId:I

    .line 132
    iput p2, p0, Lcom/amazon/kcp/info/TutorialMappings$OverflowLayoutMapping;->noOverflowLayoutId:I

    return-void
.end method
