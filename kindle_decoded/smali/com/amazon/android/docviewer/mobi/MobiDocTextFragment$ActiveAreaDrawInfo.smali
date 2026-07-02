.class Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$ActiveAreaDrawInfo;
.super Ljava/lang/Object;
.source "MobiDocTextFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ActiveAreaDrawInfo"
.end annotation


# instance fields
.field public isSelected:Z

.field public rectangles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/system/drawing/Rectangle;",
            ">;"
        }
    .end annotation
.end field

.field public type:J


# direct methods
.method public constructor <init>(Ljava/util/List;JZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/system/drawing/Rectangle;",
            ">;JZ)V"
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$ActiveAreaDrawInfo;->rectangles:Ljava/util/List;

    .line 75
    iput-wide p2, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$ActiveAreaDrawInfo;->type:J

    .line 76
    iput-boolean p4, p0, Lcom/amazon/android/docviewer/mobi/MobiDocTextFragment$ActiveAreaDrawInfo;->isSelected:Z

    return-void
.end method
