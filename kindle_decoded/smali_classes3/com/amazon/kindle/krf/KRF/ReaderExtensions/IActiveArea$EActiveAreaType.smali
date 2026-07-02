.class public final Lcom/amazon/kindle/krf/KRF/ReaderExtensions/IActiveArea$EActiveAreaType;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krf/KRF/ReaderExtensions/IActiveArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EActiveAreaType"
.end annotation


# static fields
.field public static final kAll:I = -0x1

.field public static final kAudio:I = 0x2000

.field public static final kBuyLink:I = 0x8

.field public static final kExternalLink:I = 0x2

.field public static final kFirstCustom:I = 0x100000

.field public static final kFootnoteLink:I = 0x40

.field public static final kInternalLink:I = 0x1

.field public static final kJavascriptLink:I = 0x4

.field public static final kShowDetailLink:I = 0x10

.field public static final kTableShiftDown:I = 0x200

.field public static final kTableShiftLeft:I = 0x100

.field public static final kTableShiftRight:I = 0x80

.field public static final kTableShiftUp:I = 0x400

.field public static final kTogglable:I = 0x4000

.field public static final kTooltipLink:I = 0x20

.field public static final kVideo:I = 0x1000

.field public static final kZoomable:I = 0x800


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
