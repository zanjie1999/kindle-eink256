.class public final enum Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;
.super Ljava/lang/Enum;
.source "WordWiseSettingLanguage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;

.field public static final enum CHINESE:Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;

.field public static final enum ENGLISH:Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 8
    new-instance v0, Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;

    const/4 v1, 0x0

    const-string v2, "ENGLISH"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;->ENGLISH:Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;

    .line 9
    new-instance v0, Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;

    const/4 v2, 0x1

    const-string v3, "CHINESE"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;->CHINESE:Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;

    .line 7
    sget-object v4, Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;->ENGLISH:Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;->$VALUES:[Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;

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

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;
    .locals 1

    .line 7
    const-class v0, Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;
    .locals 1

    .line 7
    sget-object v0, Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;->$VALUES:[Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;

    invoke-virtual {v0}, [Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/wordwise/language/WordWiseSettingLanguage;

    return-object v0
.end method
