.class final enum Lcom/amazon/kcp/library/NotificationsFragment$SettingsViewType;
.super Ljava/lang/Enum;
.source "NotificationsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/NotificationsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SettingsViewType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/library/NotificationsFragment$SettingsViewType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/library/NotificationsFragment$SettingsViewType;

.field public static final enum TITLE:Lcom/amazon/kcp/library/NotificationsFragment$SettingsViewType;

.field public static final enum TWO_LINE:Lcom/amazon/kcp/library/NotificationsFragment$SettingsViewType;

.field public static final enum TWO_LINES_CHECKBOX:Lcom/amazon/kcp/library/NotificationsFragment$SettingsViewType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 98
    new-instance v0, Lcom/amazon/kcp/library/NotificationsFragment$SettingsViewType;

    const/4 v1, 0x0

    const-string v2, "TWO_LINES_CHECKBOX"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kcp/library/NotificationsFragment$SettingsViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/library/NotificationsFragment$SettingsViewType;->TWO_LINES_CHECKBOX:Lcom/amazon/kcp/library/NotificationsFragment$SettingsViewType;

    .line 99
    new-instance v0, Lcom/amazon/kcp/library/NotificationsFragment$SettingsViewType;

    const/4 v2, 0x1

    const-string v3, "TWO_LINE"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kcp/library/NotificationsFragment$SettingsViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/library/NotificationsFragment$SettingsViewType;->TWO_LINE:Lcom/amazon/kcp/library/NotificationsFragment$SettingsViewType;

    .line 100
    new-instance v0, Lcom/amazon/kcp/library/NotificationsFragment$SettingsViewType;

    const/4 v3, 0x2

    const-string v4, "TITLE"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kcp/library/NotificationsFragment$SettingsViewType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/library/NotificationsFragment$SettingsViewType;->TITLE:Lcom/amazon/kcp/library/NotificationsFragment$SettingsViewType;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/kcp/library/NotificationsFragment$SettingsViewType;

    .line 97
    sget-object v5, Lcom/amazon/kcp/library/NotificationsFragment$SettingsViewType;->TWO_LINES_CHECKBOX:Lcom/amazon/kcp/library/NotificationsFragment$SettingsViewType;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/kcp/library/NotificationsFragment$SettingsViewType;->TWO_LINE:Lcom/amazon/kcp/library/NotificationsFragment$SettingsViewType;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/kcp/library/NotificationsFragment$SettingsViewType;->$VALUES:[Lcom/amazon/kcp/library/NotificationsFragment$SettingsViewType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 97
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/library/NotificationsFragment$SettingsViewType;
    .locals 1

    .line 97
    const-class v0, Lcom/amazon/kcp/library/NotificationsFragment$SettingsViewType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/library/NotificationsFragment$SettingsViewType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/library/NotificationsFragment$SettingsViewType;
    .locals 1

    .line 97
    sget-object v0, Lcom/amazon/kcp/library/NotificationsFragment$SettingsViewType;->$VALUES:[Lcom/amazon/kcp/library/NotificationsFragment$SettingsViewType;

    invoke-virtual {v0}, [Lcom/amazon/kcp/library/NotificationsFragment$SettingsViewType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/library/NotificationsFragment$SettingsViewType;

    return-object v0
.end method
