.class final Lcom/amazon/kindle/viewoptions/AaSettingManager$INSTANCE$2;
.super Lkotlin/jvm/internal/Lambda;
.source "AaSettingManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/viewoptions/AaSettingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/amazon/kindle/viewoptions/AaSettingManager$AaSettingsUtil;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kindle/viewoptions/AaSettingManager$INSTANCE$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/amazon/kindle/viewoptions/AaSettingManager$INSTANCE$2;

    invoke-direct {v0}, Lcom/amazon/kindle/viewoptions/AaSettingManager$INSTANCE$2;-><init>()V

    sput-object v0, Lcom/amazon/kindle/viewoptions/AaSettingManager$INSTANCE$2;->INSTANCE:Lcom/amazon/kindle/viewoptions/AaSettingManager$INSTANCE$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/amazon/kindle/viewoptions/AaSettingManager$AaSettingsUtil;
    .locals 3

    .line 81
    new-instance v0, Lcom/amazon/kindle/viewoptions/AaSettingManager$AaSettingsUtil;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lcom/amazon/kindle/viewoptions/AaSettingManager$AaSettingsUtil;-><init>(Lcom/amazon/kcp/application/IKindleObjectFactory;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/AaSettingManager$INSTANCE$2;->invoke()Lcom/amazon/kindle/viewoptions/AaSettingManager$AaSettingsUtil;

    move-result-object v0

    return-object v0
.end method
