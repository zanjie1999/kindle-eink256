.class public final Lcom/amazon/whisperjoin/common/sharedtypes/barcode/RegexBarcodeParser;
.super Ljava/lang/Object;
.source "RegexBarcodeParser.java"

# interfaces
.implements Lcom/amazon/whisperjoin/common/sharedtypes/barcode/BarcodeParser;


# static fields
.field private static final ABV_PATTERN:Ljava/lang/String; = "(IB[0-9]{2})"

.field private static final AMAZON_BARCODE_VERSION:Ljava/lang/String; = "ABV"

.field private static final COLON_SUFFIX:Ljava/lang/String; = ":"

.field private static final PID:Ljava/lang/String; = "PID"

.field private static final PID_PATTERN:Ljava/lang/String; = "([a-zA-Z0-9]{4})"

.field private static final PIN:Ljava/lang/String; = "PIN"

.field private static final PIN_PATTERN:Ljava/lang/String; = "([a-zA-Z0-9]{8,12})"

.field private static final PUBLIC_KEY:Ljava/lang/String; = "PUK"

.field private static final PUK_PATTERN:Ljava/lang/String; = "([-A-Za-z0-9+/=]+={0,3})"

.field private static final SEMICOLON_SUFFIX:Ljava/lang/String; = ";"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
