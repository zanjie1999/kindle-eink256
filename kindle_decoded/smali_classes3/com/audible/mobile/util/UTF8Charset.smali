.class public final Lcom/audible/mobile/util/UTF8Charset;
.super Ljava/lang/Object;
.source "UTF8Charset.java"


# static fields
.field public static final UTF8:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 11
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/audible/mobile/util/UTF8Charset;->UTF8:Ljava/nio/charset/Charset;

    return-void
.end method
