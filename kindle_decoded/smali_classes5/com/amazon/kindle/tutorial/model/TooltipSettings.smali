.class public Lcom/amazon/kindle/tutorial/model/TooltipSettings;
.super Ljava/lang/Object;
.source "TooltipUI.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/tutorial/model/TooltipSettings$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kindle/tutorial/model/TooltipSettings$Companion;

.field private static final TEXT_FONT_KEY:Ljava/lang/String; = "textFont"

.field private static final TITLE_ALL_CAPS_KEY:Ljava/lang/String; = "titleUppercase"

.field private static final TITLE_FONT_KEY:Ljava/lang/String; = "titleFont"


# instance fields
.field private final disableClickAnywhere:Z

.field private final dismissOnRestart:Z

.field private final textFontName:Ljava/lang/String;

.field private final titleAllCaps:Z

.field private final titleFontName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/tutorial/model/TooltipSettings$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/tutorial/model/TooltipSettings$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kindle/tutorial/model/TooltipSettings;->Companion:Lcom/amazon/kindle/tutorial/model/TooltipSettings$Companion;

    return-void
.end method

.method public constructor <init>(ZZZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/amazon/kindle/tutorial/model/TooltipSettings;->disableClickAnywhere:Z

    iput-boolean p2, p0, Lcom/amazon/kindle/tutorial/model/TooltipSettings;->dismissOnRestart:Z

    iput-boolean p3, p0, Lcom/amazon/kindle/tutorial/model/TooltipSettings;->titleAllCaps:Z

    iput-object p4, p0, Lcom/amazon/kindle/tutorial/model/TooltipSettings;->titleFontName:Ljava/lang/String;

    iput-object p5, p0, Lcom/amazon/kindle/tutorial/model/TooltipSettings;->textFontName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getDisableClickAnywhere()Z
    .locals 1

    .line 124
    iget-boolean v0, p0, Lcom/amazon/kindle/tutorial/model/TooltipSettings;->disableClickAnywhere:Z

    return v0
.end method

.method public final getDismissOnRestart()Z
    .locals 1

    .line 124
    iget-boolean v0, p0, Lcom/amazon/kindle/tutorial/model/TooltipSettings;->dismissOnRestart:Z

    return v0
.end method

.method public final getTextFontName()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/model/TooltipSettings;->textFontName:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitleAllCaps()Z
    .locals 1

    .line 125
    iget-boolean v0, p0, Lcom/amazon/kindle/tutorial/model/TooltipSettings;->titleAllCaps:Z

    return v0
.end method

.method public final getTitleFontName()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/model/TooltipSettings;->titleFontName:Ljava/lang/String;

    return-object v0
.end method
