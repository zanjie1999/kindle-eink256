.class public final enum Lcom/amazon/kindle/tutorial/model/TooltipAccessibilityType;
.super Ljava/lang/Enum;
.source "TooltipUI.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/tutorial/model/TooltipAccessibilityType$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/tutorial/model/TooltipAccessibilityType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/tutorial/model/TooltipAccessibilityType;

.field public static final Companion:Lcom/amazon/kindle/tutorial/model/TooltipAccessibilityType$Companion;

.field private static final types:[Lcom/amazon/kindle/tutorial/model/TooltipAccessibilityType;


# instance fields
.field private final className:Ljava/lang/String;

.field private final key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/amazon/kindle/tutorial/model/TooltipAccessibilityType;

    new-instance v1, Lcom/amazon/kindle/tutorial/model/TooltipAccessibilityType;

    .line 150
    const-class v2, Landroid/widget/Button;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Button::class.java.name"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const-string v4, "BUTTON"

    const-string v5, "button"

    invoke-direct {v1, v4, v3, v5, v2}, Lcom/amazon/kindle/tutorial/model/TooltipAccessibilityType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    aput-object v1, v0, v3

    sput-object v0, Lcom/amazon/kindle/tutorial/model/TooltipAccessibilityType;->$VALUES:[Lcom/amazon/kindle/tutorial/model/TooltipAccessibilityType;

    new-instance v0, Lcom/amazon/kindle/tutorial/model/TooltipAccessibilityType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/tutorial/model/TooltipAccessibilityType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kindle/tutorial/model/TooltipAccessibilityType;->Companion:Lcom/amazon/kindle/tutorial/model/TooltipAccessibilityType$Companion;

    .line 153
    invoke-static {}, Lcom/amazon/kindle/tutorial/model/TooltipAccessibilityType;->values()[Lcom/amazon/kindle/tutorial/model/TooltipAccessibilityType;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/tutorial/model/TooltipAccessibilityType;->types:[Lcom/amazon/kindle/tutorial/model/TooltipAccessibilityType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 149
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/amazon/kindle/tutorial/model/TooltipAccessibilityType;->key:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/kindle/tutorial/model/TooltipAccessibilityType;->className:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getTypes$cp()[Lcom/amazon/kindle/tutorial/model/TooltipAccessibilityType;
    .locals 1

    .line 149
    sget-object v0, Lcom/amazon/kindle/tutorial/model/TooltipAccessibilityType;->types:[Lcom/amazon/kindle/tutorial/model/TooltipAccessibilityType;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/tutorial/model/TooltipAccessibilityType;
    .locals 1

    const-class v0, Lcom/amazon/kindle/tutorial/model/TooltipAccessibilityType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/tutorial/model/TooltipAccessibilityType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/tutorial/model/TooltipAccessibilityType;
    .locals 1

    sget-object v0, Lcom/amazon/kindle/tutorial/model/TooltipAccessibilityType;->$VALUES:[Lcom/amazon/kindle/tutorial/model/TooltipAccessibilityType;

    invoke-virtual {v0}, [Lcom/amazon/kindle/tutorial/model/TooltipAccessibilityType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/tutorial/model/TooltipAccessibilityType;

    return-object v0
.end method


# virtual methods
.method public final getClassName()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/model/TooltipAccessibilityType;->className:Ljava/lang/String;

    return-object v0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/model/TooltipAccessibilityType;->key:Ljava/lang/String;

    return-object v0
.end method
