.class public final enum Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;
.super Ljava/lang/Enum;
.source "KindleDocView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/android/docviewer/KindleDocView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnimationDirection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;

.field public static final enum ToLeft:Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;

.field public static final enum ToRight:Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 31
    new-instance v0, Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;

    const/4 v1, 0x0

    const-string v2, "ToRight"

    invoke-direct {v0, v2, v1}, Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;->ToRight:Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;

    new-instance v0, Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;

    const/4 v2, 0x1

    const-string v3, "ToLeft"

    invoke-direct {v0, v3, v2}, Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;->ToLeft:Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;

    .line 30
    sget-object v4, Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;->ToRight:Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;->$VALUES:[Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;
    .locals 1

    .line 30
    const-class v0, Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;

    return-object p0
.end method

.method public static values()[Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;
    .locals 1

    .line 30
    sget-object v0, Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;->$VALUES:[Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;

    invoke-virtual {v0}, [Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;

    return-object v0
.end method
