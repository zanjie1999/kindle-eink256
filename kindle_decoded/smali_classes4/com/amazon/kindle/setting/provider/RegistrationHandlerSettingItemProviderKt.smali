.class public final Lcom/amazon/kindle/setting/provider/RegistrationHandlerSettingItemProviderKt;
.super Ljava/lang/Object;
.source "RegistrationHandlerSettingItemProvider.kt"


# static fields
.field private static final SIGN_IN_ITEM_ID:Ljava/lang/String; = "setting_item_sign_in"

.field private static final SIGN_OUT_ITEM_ID:Ljava/lang/String; = "setting_item_sign_out"

.field private static final SURROGATE_EMAIL_REGEX:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "amzn1.account.\\w*@amazon-customer.([a-zA-Z]{2})"

    .line 118
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/setting/provider/RegistrationHandlerSettingItemProviderKt;->SURROGATE_EMAIL_REGEX:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static final getSURROGATE_EMAIL_REGEX()Ljava/util/regex/Pattern;
    .locals 1

    .line 118
    sget-object v0, Lcom/amazon/kindle/setting/provider/RegistrationHandlerSettingItemProviderKt;->SURROGATE_EMAIL_REGEX:Ljava/util/regex/Pattern;

    return-object v0
.end method
