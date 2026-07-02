.class public abstract Lcom/amazon/ksdk/presets/FontManager;
.super Ljava/lang/Object;
.source "FontManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ksdk/presets/FontManager$CppProxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addObserver(Lcom/amazon/ksdk/presets/FontManagerObserver;)V
.end method

.method public abstract getFontList()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/ksdk/presets/FontInfo;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getUserFontList(Z)Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/ksdk/presets/FontInfo;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract refreshUserFonts()V
.end method

.method public abstract removeObserver(Lcom/amazon/ksdk/presets/FontManagerObserver;)V
.end method
