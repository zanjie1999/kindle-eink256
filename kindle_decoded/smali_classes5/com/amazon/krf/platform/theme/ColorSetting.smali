.class public Lcom/amazon/krf/platform/theme/ColorSetting;
.super Ljava/lang/Object;
.source "ColorSetting.java"


# instance fields
.field private mColor:I

.field private mColorTheme:Lcom/amazon/krf/platform/theme/ColorTheme;

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/krf/platform/theme/ColorSetting;-><init>(Ljava/lang/String;ILcom/amazon/krf/platform/theme/ColorTheme;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILcom/amazon/krf/platform/theme/ColorTheme;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/amazon/krf/platform/theme/ColorSetting;->mName:Ljava/lang/String;

    .line 26
    iput p2, p0, Lcom/amazon/krf/platform/theme/ColorSetting;->mColor:I

    .line 27
    iput-object p3, p0, Lcom/amazon/krf/platform/theme/ColorSetting;->mColorTheme:Lcom/amazon/krf/platform/theme/ColorTheme;

    return-void
.end method


# virtual methods
.method public getColor()I
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/amazon/krf/platform/theme/ColorSetting;->mColorTheme:Lcom/amazon/krf/platform/theme/ColorTheme;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amazon/krf/platform/theme/ColorSetting;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/krf/platform/theme/ColorTheme;->hasColor(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/amazon/krf/platform/theme/ColorSetting;->mColorTheme:Lcom/amazon/krf/platform/theme/ColorTheme;

    iget-object v1, p0, Lcom/amazon/krf/platform/theme/ColorSetting;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amazon/krf/platform/theme/ColorTheme;->getColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/amazon/krf/platform/theme/ColorSetting;->mColor:I

    .line 52
    :cond_0
    iget v0, p0, Lcom/amazon/krf/platform/theme/ColorSetting;->mColor:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/amazon/krf/platform/theme/ColorSetting;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public setColor(I)V
    .locals 2

    .line 61
    iput p1, p0, Lcom/amazon/krf/platform/theme/ColorSetting;->mColor:I

    .line 62
    iget-object v0, p0, Lcom/amazon/krf/platform/theme/ColorSetting;->mColorTheme:Lcom/amazon/krf/platform/theme/ColorTheme;

    if-eqz v0, :cond_0

    .line 64
    iget-object v1, p0, Lcom/amazon/krf/platform/theme/ColorSetting;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/amazon/krf/platform/theme/ColorTheme;->setColor(Ljava/lang/String;I)Lcom/amazon/krf/platform/theme/ColorTheme;

    :cond_0
    return-void
.end method

.method setColorTheme(Lcom/amazon/krf/platform/theme/ColorTheme;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/amazon/krf/platform/theme/ColorSetting;->mColorTheme:Lcom/amazon/krf/platform/theme/ColorTheme;

    return-void
.end method
