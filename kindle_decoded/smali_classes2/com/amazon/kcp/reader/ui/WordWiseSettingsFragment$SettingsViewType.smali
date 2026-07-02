.class final enum Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsViewType;
.super Ljava/lang/Enum;
.source "WordWiseSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SettingsViewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsViewType;

.field public static final enum LANGUAGE:Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsViewType;

.field public static final enum TITLE:Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsViewType;

.field public static final enum TWO_LINES_CHECKBOX:Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 130
    new-instance v0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsViewType;

    const/4 v1, 0x0

    const-string v2, "TWO_LINES_CHECKBOX"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsViewType;->TWO_LINES_CHECKBOX:Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsViewType;

    .line 131
    new-instance v0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsViewType;

    const/4 v2, 0x1

    const-string v3, "TITLE"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsViewType;->TITLE:Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsViewType;

    .line 132
    new-instance v0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsViewType;

    const/4 v3, 0x2

    const-string v4, "LANGUAGE"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsViewType;->LANGUAGE:Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsViewType;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsViewType;

    .line 129
    sget-object v5, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsViewType;->TWO_LINES_CHECKBOX:Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsViewType;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsViewType;->TITLE:Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsViewType;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsViewType;->$VALUES:[Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsViewType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 129
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsViewType;
    .locals 1

    .line 129
    const-class v0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsViewType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsViewType;
    .locals 1

    .line 129
    sget-object v0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsViewType;->$VALUES:[Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsViewType;

    invoke-virtual {v0}, [Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsViewType;

    return-object v0
.end method
