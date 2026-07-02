.class public final Lcom/amazon/org/codehaus/jackson/Base64Variants;
.super Ljava/lang/Object;
.source "Base64Variants.java"


# static fields
.field public static final MIME:Lcom/amazon/org/codehaus/jackson/Base64Variant;

.field public static final MIME_NO_LINEFEEDS:Lcom/amazon/org/codehaus/jackson/Base64Variant;

.field public static final MODIFIED_FOR_URL:Lcom/amazon/org/codehaus/jackson/Base64Variant;

.field public static final PEM:Lcom/amazon/org/codehaus/jackson/Base64Variant;

.field static final STD_BASE64_ALPHABET:Ljava/lang/String; = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 38
    new-instance v6, Lcom/amazon/org/codehaus/jackson/Base64Variant;

    const-string v1, "MIME"

    const-string v2, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    const/4 v3, 0x1

    const/16 v4, 0x3d

    const/16 v5, 0x4c

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/amazon/org/codehaus/jackson/Base64Variant;-><init>(Ljava/lang/String;Ljava/lang/String;ZCI)V

    sput-object v6, Lcom/amazon/org/codehaus/jackson/Base64Variants;->MIME:Lcom/amazon/org/codehaus/jackson/Base64Variant;

    .line 49
    new-instance v0, Lcom/amazon/org/codehaus/jackson/Base64Variant;

    const-string v1, "MIME-NO-LINEFEEDS"

    const v2, 0x7fffffff

    invoke-direct {v0, v6, v1, v2}, Lcom/amazon/org/codehaus/jackson/Base64Variant;-><init>(Lcom/amazon/org/codehaus/jackson/Base64Variant;Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/Base64Variants;->MIME_NO_LINEFEEDS:Lcom/amazon/org/codehaus/jackson/Base64Variant;

    .line 56
    new-instance v0, Lcom/amazon/org/codehaus/jackson/Base64Variant;

    sget-object v8, Lcom/amazon/org/codehaus/jackson/Base64Variants;->MIME:Lcom/amazon/org/codehaus/jackson/Base64Variant;

    const-string v9, "PEM"

    const/4 v10, 0x1

    const/16 v11, 0x3d

    const/16 v12, 0x40

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/amazon/org/codehaus/jackson/Base64Variant;-><init>(Lcom/amazon/org/codehaus/jackson/Base64Variant;Ljava/lang/String;ZCI)V

    sput-object v0, Lcom/amazon/org/codehaus/jackson/Base64Variants;->PEM:Lcom/amazon/org/codehaus/jackson/Base64Variant;

    .line 71
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "+"

    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x2d

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    const-string v1, "/"

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x5f

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    .line 78
    new-instance v1, Lcom/amazon/org/codehaus/jackson/Base64Variant;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v4, "MODIFIED-FOR-URL"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const v8, 0x7fffffff

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/amazon/org/codehaus/jackson/Base64Variant;-><init>(Ljava/lang/String;Ljava/lang/String;ZCI)V

    sput-object v1, Lcom/amazon/org/codehaus/jackson/Base64Variants;->MODIFIED_FOR_URL:Lcom/amazon/org/codehaus/jackson/Base64Variant;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultVariant()Lcom/amazon/org/codehaus/jackson/Base64Variant;
    .locals 1

    .line 88
    sget-object v0, Lcom/amazon/org/codehaus/jackson/Base64Variants;->MIME_NO_LINEFEEDS:Lcom/amazon/org/codehaus/jackson/Base64Variant;

    return-object v0
.end method
