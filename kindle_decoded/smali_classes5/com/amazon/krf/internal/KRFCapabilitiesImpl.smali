.class public Lcom/amazon/krf/internal/KRFCapabilitiesImpl;
.super Ljava/lang/Object;
.source "KRFCapabilitiesImpl.java"

# interfaces
.implements Lcom/amazon/krf/platform/KRFCapabilities;


# instance fields
.field private mCanChangeColorScheme:Z

.field private mCanChangeFontFace:Z

.field private mCanChangeLayoutSize:Z

.field private mCanChangeMargins:Z

.field private mCanChangeTextLayout:Z

.field private mColorThemes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/krf/platform/theme/ColorTheme;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportsMultiColumn:Z


# direct methods
.method constructor <init>(ZZZZZZLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZZZZ",
            "Ljava/util/List<",
            "Lcom/amazon/krf/platform/theme/ColorTheme;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-boolean p1, p0, Lcom/amazon/krf/internal/KRFCapabilitiesImpl;->mCanChangeTextLayout:Z

    .line 32
    iput-boolean p2, p0, Lcom/amazon/krf/internal/KRFCapabilitiesImpl;->mCanChangeFontFace:Z

    .line 33
    iput-boolean p3, p0, Lcom/amazon/krf/internal/KRFCapabilitiesImpl;->mCanChangeMargins:Z

    .line 34
    iput-boolean p4, p0, Lcom/amazon/krf/internal/KRFCapabilitiesImpl;->mSupportsMultiColumn:Z

    .line 35
    iput-boolean p5, p0, Lcom/amazon/krf/internal/KRFCapabilitiesImpl;->mCanChangeColorScheme:Z

    .line 36
    iput-boolean p6, p0, Lcom/amazon/krf/internal/KRFCapabilitiesImpl;->mCanChangeLayoutSize:Z

    .line 37
    iput-object p7, p0, Lcom/amazon/krf/internal/KRFCapabilitiesImpl;->mColorThemes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public canChangeColorScheme()Z
    .locals 1

    .line 57
    iget-boolean v0, p0, Lcom/amazon/krf/internal/KRFCapabilitiesImpl;->mCanChangeColorScheme:Z

    return v0
.end method

.method public canChangeFontFace()Z
    .locals 1

    .line 45
    iget-boolean v0, p0, Lcom/amazon/krf/internal/KRFCapabilitiesImpl;->mCanChangeFontFace:Z

    return v0
.end method

.method public canChangeLayoutSize()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/amazon/krf/internal/KRFCapabilitiesImpl;->mCanChangeLayoutSize:Z

    return v0
.end method

.method public canChangeMargins()Z
    .locals 1

    .line 49
    iget-boolean v0, p0, Lcom/amazon/krf/internal/KRFCapabilitiesImpl;->mCanChangeMargins:Z

    return v0
.end method

.method public canChangeTextLayout()Z
    .locals 1

    .line 41
    iget-boolean v0, p0, Lcom/amazon/krf/internal/KRFCapabilitiesImpl;->mCanChangeTextLayout:Z

    return v0
.end method

.method public getColorThemes()[Lcom/amazon/krf/platform/theme/ColorTheme;
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFCapabilitiesImpl;->mColorThemes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/amazon/krf/platform/theme/ColorTheme;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/krf/platform/theme/ColorTheme;

    return-object v0
.end method

.method public supportsMultiColumn()Z
    .locals 1

    .line 53
    iget-boolean v0, p0, Lcom/amazon/krf/internal/KRFCapabilitiesImpl;->mSupportsMultiColumn:Z

    return v0
.end method
