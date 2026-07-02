.class public Lcom/amazon/kindle/tutorial/model/TooltipMessageUI;
.super Ljava/lang/Object;
.source "TooltipUI.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/tutorial/model/TooltipMessageUI$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kindle/tutorial/model/TooltipMessageUI$Companion;


# instance fields
.field private final accessibilityText:Ljava/lang/String;

.field private final action:Lcom/amazon/kindle/tutorial/model/ActionConfig;

.field private final alignment:Ljava/lang/String;

.field private final anchorAccessibilityType:Ljava/lang/String;

.field private final anchorID:Ljava/lang/String;

.field private final anchorLocationID:Ljava/lang/String;

.field private final landscapeOrientation:Lcom/amazon/kindle/krx/tutorial/Orientation;

.field private final metricsName:Ljava/lang/String;

.field private final portraitOrientation:Lcom/amazon/kindle/krx/tutorial/Orientation;

.field private final text:Ljava/lang/String;

.field private final title:Ljava/lang/String;

.field private final tutorialResourceMetadata:Lcom/amazon/kindle/tutorial/model/TutorialResourceMetadata;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/tutorial/model/TooltipMessageUI$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/tutorial/model/TooltipMessageUI$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kindle/tutorial/model/TooltipMessageUI;->Companion:Lcom/amazon/kindle/tutorial/model/TooltipMessageUI$Companion;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/Orientation;Lcom/amazon/kindle/krx/tutorial/Orientation;Lcom/amazon/kindle/tutorial/model/ActionConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/tutorial/model/TutorialResourceMetadata;)V
    .locals 1

    const-string/jumbo v0, "text"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "landscapeOrientation"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "portraitOrientation"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "anchorID"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/tutorial/model/TooltipMessageUI;->title:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/kindle/tutorial/model/TooltipMessageUI;->text:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kindle/tutorial/model/TooltipMessageUI;->accessibilityText:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/kindle/tutorial/model/TooltipMessageUI;->alignment:Ljava/lang/String;

    iput-object p5, p0, Lcom/amazon/kindle/tutorial/model/TooltipMessageUI;->metricsName:Ljava/lang/String;

    iput-object p6, p0, Lcom/amazon/kindle/tutorial/model/TooltipMessageUI;->landscapeOrientation:Lcom/amazon/kindle/krx/tutorial/Orientation;

    iput-object p7, p0, Lcom/amazon/kindle/tutorial/model/TooltipMessageUI;->portraitOrientation:Lcom/amazon/kindle/krx/tutorial/Orientation;

    iput-object p8, p0, Lcom/amazon/kindle/tutorial/model/TooltipMessageUI;->action:Lcom/amazon/kindle/tutorial/model/ActionConfig;

    iput-object p9, p0, Lcom/amazon/kindle/tutorial/model/TooltipMessageUI;->anchorID:Ljava/lang/String;

    iput-object p10, p0, Lcom/amazon/kindle/tutorial/model/TooltipMessageUI;->anchorLocationID:Ljava/lang/String;

    iput-object p11, p0, Lcom/amazon/kindle/tutorial/model/TooltipMessageUI;->anchorAccessibilityType:Ljava/lang/String;

    iput-object p12, p0, Lcom/amazon/kindle/tutorial/model/TooltipMessageUI;->tutorialResourceMetadata:Lcom/amazon/kindle/tutorial/model/TutorialResourceMetadata;

    return-void
.end method


# virtual methods
.method public final getAccessibilityText()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/model/TooltipMessageUI;->accessibilityText:Ljava/lang/String;

    return-object v0
.end method

.method public final getAction()Lcom/amazon/kindle/tutorial/model/ActionConfig;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/model/TooltipMessageUI;->action:Lcom/amazon/kindle/tutorial/model/ActionConfig;

    return-object v0
.end method

.method public final getAlignment()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/model/TooltipMessageUI;->alignment:Ljava/lang/String;

    return-object v0
.end method

.method public final getAnchorAccessibilityType()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/model/TooltipMessageUI;->anchorAccessibilityType:Ljava/lang/String;

    return-object v0
.end method

.method public final getAnchorID()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/model/TooltipMessageUI;->anchorID:Ljava/lang/String;

    return-object v0
.end method

.method public final getAnchorLocationID()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/model/TooltipMessageUI;->anchorLocationID:Ljava/lang/String;

    return-object v0
.end method

.method public final getLandscapeOrientation()Lcom/amazon/kindle/krx/tutorial/Orientation;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/model/TooltipMessageUI;->landscapeOrientation:Lcom/amazon/kindle/krx/tutorial/Orientation;

    return-object v0
.end method

.method public final getMetricsName()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/model/TooltipMessageUI;->metricsName:Ljava/lang/String;

    return-object v0
.end method

.method public final getPortraitOrientation()Lcom/amazon/kindle/krx/tutorial/Orientation;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/model/TooltipMessageUI;->portraitOrientation:Lcom/amazon/kindle/krx/tutorial/Orientation;

    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/model/TooltipMessageUI;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/model/TooltipMessageUI;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final getTutorialResourceMetadata()Lcom/amazon/kindle/tutorial/model/TutorialResourceMetadata;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/model/TooltipMessageUI;->tutorialResourceMetadata:Lcom/amazon/kindle/tutorial/model/TutorialResourceMetadata;

    return-object v0
.end method
