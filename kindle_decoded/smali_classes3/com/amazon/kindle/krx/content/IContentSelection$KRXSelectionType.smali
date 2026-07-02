.class public final enum Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;
.super Ljava/lang/Enum;
.source "IContentSelection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/content/IContentSelection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KRXSelectionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;

.field public static final enum GRAPHICAL_HIGHLIGHT:Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;

.field public static final enum NONE_SELECTED:Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;

.field public static final enum TEXT_HIGHLIGHT:Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;

.field public static final enum TEXT_NON_EDITABLE:Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 22
    new-instance v0, Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;

    const/4 v1, 0x0

    const-string v2, "TEXT_HIGHLIGHT"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;->TEXT_HIGHLIGHT:Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;

    .line 23
    new-instance v0, Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;

    const/4 v2, 0x1

    const-string v3, "GRAPHICAL_HIGHLIGHT"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;->GRAPHICAL_HIGHLIGHT:Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;

    .line 28
    new-instance v0, Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;

    const/4 v3, 0x2

    const-string v4, "TEXT_NON_EDITABLE"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;->TEXT_NON_EDITABLE:Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;

    .line 29
    new-instance v0, Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;

    const/4 v4, 0x3

    const-string v5, "NONE_SELECTED"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;->NONE_SELECTED:Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;

    const/4 v5, 0x4

    new-array v5, v5, [Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;

    .line 20
    sget-object v6, Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;->TEXT_HIGHLIGHT:Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;

    aput-object v6, v5, v1

    sget-object v1, Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;->GRAPHICAL_HIGHLIGHT:Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;

    aput-object v1, v5, v2

    sget-object v1, Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;->TEXT_NON_EDITABLE:Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;

    aput-object v1, v5, v3

    aput-object v0, v5, v4

    sput-object v5, Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;->$VALUES:[Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;
    .locals 1

    .line 20
    const-class v0, Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;
    .locals 1

    .line 20
    sget-object v0, Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;->$VALUES:[Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;

    invoke-virtual {v0}, [Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/krx/content/IContentSelection$KRXSelectionType;

    return-object v0
.end method
