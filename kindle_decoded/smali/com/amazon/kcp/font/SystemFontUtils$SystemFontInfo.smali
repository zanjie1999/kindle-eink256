.class public Lcom/amazon/kcp/font/SystemFontUtils$SystemFontInfo;
.super Ljava/lang/Object;
.source "SystemFontUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/font/SystemFontUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SystemFontInfo"
.end annotation


# instance fields
.field fontFileName:Ljava/lang/String;

.field typeFaceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/font/SystemFontUtils;Ljava/lang/String;Ljava/lang/String;Lcom/mobipocket/android/drawing/FontFamily;)V
    .locals 0

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iput-object p2, p0, Lcom/amazon/kcp/font/SystemFontUtils$SystemFontInfo;->fontFileName:Ljava/lang/String;

    .line 194
    iput-object p3, p0, Lcom/amazon/kcp/font/SystemFontUtils$SystemFontInfo;->typeFaceName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFontFileName()Ljava/lang/String;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/amazon/kcp/font/SystemFontUtils$SystemFontInfo;->fontFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeFaceName()Ljava/lang/String;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/amazon/kcp/font/SystemFontUtils$SystemFontInfo;->typeFaceName:Ljava/lang/String;

    return-object v0
.end method
