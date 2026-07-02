.class public final enum Lcom/amazon/ea/model/widget/WidgetDisplayFormat;
.super Ljava/lang/Enum;
.source "WidgetDisplayFormat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/ea/model/widget/WidgetDisplayFormat;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/ea/model/widget/WidgetDisplayFormat;

.field public static final enum FIXED_WIDTH:Lcom/amazon/ea/model/widget/WidgetDisplayFormat;

.field public static final enum FULL_WIDTH:Lcom/amazon/ea/model/widget/WidgetDisplayFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 8
    new-instance v0, Lcom/amazon/ea/model/widget/WidgetDisplayFormat;

    const/4 v1, 0x0

    const-string v2, "FULL_WIDTH"

    invoke-direct {v0, v2, v1}, Lcom/amazon/ea/model/widget/WidgetDisplayFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ea/model/widget/WidgetDisplayFormat;->FULL_WIDTH:Lcom/amazon/ea/model/widget/WidgetDisplayFormat;

    new-instance v0, Lcom/amazon/ea/model/widget/WidgetDisplayFormat;

    const/4 v2, 0x1

    const-string v3, "FIXED_WIDTH"

    invoke-direct {v0, v3, v2}, Lcom/amazon/ea/model/widget/WidgetDisplayFormat;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/ea/model/widget/WidgetDisplayFormat;->FIXED_WIDTH:Lcom/amazon/ea/model/widget/WidgetDisplayFormat;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/ea/model/widget/WidgetDisplayFormat;

    .line 7
    sget-object v4, Lcom/amazon/ea/model/widget/WidgetDisplayFormat;->FULL_WIDTH:Lcom/amazon/ea/model/widget/WidgetDisplayFormat;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/ea/model/widget/WidgetDisplayFormat;->$VALUES:[Lcom/amazon/ea/model/widget/WidgetDisplayFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/ea/model/widget/WidgetDisplayFormat;
    .locals 1

    .line 7
    const-class v0, Lcom/amazon/ea/model/widget/WidgetDisplayFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/ea/model/widget/WidgetDisplayFormat;

    return-object p0
.end method

.method public static values()[Lcom/amazon/ea/model/widget/WidgetDisplayFormat;
    .locals 1

    .line 7
    sget-object v0, Lcom/amazon/ea/model/widget/WidgetDisplayFormat;->$VALUES:[Lcom/amazon/ea/model/widget/WidgetDisplayFormat;

    invoke-virtual {v0}, [Lcom/amazon/ea/model/widget/WidgetDisplayFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/ea/model/widget/WidgetDisplayFormat;

    return-object v0
.end method
