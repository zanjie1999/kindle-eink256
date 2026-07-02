.class public final Lcom/amazon/kindle/krf/KRF/Reader/ILink$ELinkType;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krf/KRF/Reader/ILink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ELinkType"
.end annotation


# static fields
.field public static final kAmazonLink:I = 0x40

.field public static final kExternalLink:I = 0x2

.field public static final kFootnoteLink:I = 0x8

.field public static final kInternalLink:I = 0x1

.field public static final kJavascriptLink:I = 0x4

.field public static final kTooltipLink:I = 0x10

.field public static final kZoomableLink:I = 0x20


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
