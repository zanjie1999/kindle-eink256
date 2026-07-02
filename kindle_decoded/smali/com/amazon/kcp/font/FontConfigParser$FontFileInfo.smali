.class public Lcom/amazon/kcp/font/FontConfigParser$FontFileInfo;
.super Ljava/lang/Object;
.source "FontConfigParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/font/FontConfigParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FontFileInfo"
.end annotation


# instance fields
.field fileName:Ljava/lang/String;

.field index:I


# direct methods
.method protected constructor <init>(Lcom/amazon/kcp/font/FontConfigParser;)V
    .locals 0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
