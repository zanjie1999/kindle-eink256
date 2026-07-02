.class final enum Lcom/amazon/android/docviewer/pdf/PanningAnimation$PanningMode;
.super Ljava/lang/Enum;
.source "PanningAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/pdf/PanningAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PanningMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/android/docviewer/pdf/PanningAnimation$PanningMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/android/docviewer/pdf/PanningAnimation$PanningMode;

.field public static final enum SCROLLING:Lcom/amazon/android/docviewer/pdf/PanningAnimation$PanningMode;

.field public static final enum TARGET:Lcom/amazon/android/docviewer/pdf/PanningAnimation$PanningMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 19
    new-instance v0, Lcom/amazon/android/docviewer/pdf/PanningAnimation$PanningMode;

    const/4 v1, 0x0

    const-string v2, "TARGET"

    invoke-direct {v0, v2, v1}, Lcom/amazon/android/docviewer/pdf/PanningAnimation$PanningMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/docviewer/pdf/PanningAnimation$PanningMode;->TARGET:Lcom/amazon/android/docviewer/pdf/PanningAnimation$PanningMode;

    new-instance v0, Lcom/amazon/android/docviewer/pdf/PanningAnimation$PanningMode;

    const/4 v2, 0x1

    const-string v3, "SCROLLING"

    invoke-direct {v0, v3, v2}, Lcom/amazon/android/docviewer/pdf/PanningAnimation$PanningMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/docviewer/pdf/PanningAnimation$PanningMode;->SCROLLING:Lcom/amazon/android/docviewer/pdf/PanningAnimation$PanningMode;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/android/docviewer/pdf/PanningAnimation$PanningMode;

    sget-object v4, Lcom/amazon/android/docviewer/pdf/PanningAnimation$PanningMode;->TARGET:Lcom/amazon/android/docviewer/pdf/PanningAnimation$PanningMode;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/android/docviewer/pdf/PanningAnimation$PanningMode;->$VALUES:[Lcom/amazon/android/docviewer/pdf/PanningAnimation$PanningMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/android/docviewer/pdf/PanningAnimation$PanningMode;
    .locals 1

    .line 19
    const-class v0, Lcom/amazon/android/docviewer/pdf/PanningAnimation$PanningMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/android/docviewer/pdf/PanningAnimation$PanningMode;

    return-object p0
.end method

.method public static values()[Lcom/amazon/android/docviewer/pdf/PanningAnimation$PanningMode;
    .locals 1

    .line 19
    sget-object v0, Lcom/amazon/android/docviewer/pdf/PanningAnimation$PanningMode;->$VALUES:[Lcom/amazon/android/docviewer/pdf/PanningAnimation$PanningMode;

    invoke-virtual {v0}, [Lcom/amazon/android/docviewer/pdf/PanningAnimation$PanningMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/android/docviewer/pdf/PanningAnimation$PanningMode;

    return-object v0
.end method
