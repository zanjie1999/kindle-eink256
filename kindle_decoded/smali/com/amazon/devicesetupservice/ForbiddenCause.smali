.class public Lcom/amazon/devicesetupservice/ForbiddenCause;
.super Ljava/lang/Object;
.source "ForbiddenCause.java"


# static fields
.field public static final ANONYMOUS_PROVISIONING_BLOCKED_PROVISIONEE:Ljava/lang/String; = "ANONYMOUS_PROVISIONING_BLOCKED_PROVISIONEE"

.field public static final ANONYMOUS_PROVISIONING_BLOCKED_PROVISIONER:Ljava/lang/String; = "ANONYMOUS_PROVISIONING_BLOCKED_PROVISIONER"

.field public static final ANONYMOUS_PROVISIONING_BLOCKED_REGION:Ljava/lang/String; = "ANONYMOUS_PROVISIONING_BLOCKED_REGION"

.field public static final AUTHENTICATED_SETUP_NOT_SUPPORTED:Ljava/lang/String; = "AUTHENTICATED_SETUP_NOT_SUPPORTED"

.field public static final INVALID_DHA_SIGNATURE:Ljava/lang/String; = "INVALID_DHA_SIGNATURE"

.field public static final INVALID_PROVISIONER:Ljava/lang/String; = "INVALID_PROVISIONER"

.field public static final NOT_ASSOCIATED_TO_CUSTOMER:Ljava/lang/String; = "NOT_ASSOCIATED_TO_CUSTOMER"

.field public static final NOT_WHITELISTED_INTERNAL_ACCOUNT:Ljava/lang/String; = "NOT_WHITELISTED_INTERNAL_ACCOUNT"

.field public static final NO_ASSOCIATION_EXISTS:Ljava/lang/String; = "NO_ASSOCIATION_EXISTS"

.field public static final NO_REGISTERED_CUSTOMER:Ljava/lang/String; = "NO_REGISTERED_CUSTOMER"

.field public static final OTHER:Ljava/lang/String; = "OTHER"

.field public static final SIDEWALK_PROVISIONER_CUSTOMER_OPTED_OUT:Ljava/lang/String; = "SIDEWALK_PROVISIONER_CUSTOMER_OPTED_OUT"

.field public static final UNSUPPORTED_ASSOCIATION:Ljava/lang/String; = "UNSUPPORTED_ASSOCIATION"

.field public static final UNSUPPORTED_PROVISIONEE_FOR_ANONYMOUS_PROVISIONING:Ljava/lang/String; = "UNSUPPORTED_PROVISIONEE_FOR_ANONYMOUS_PROVISIONING"

.field private static final values:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const-string v0, "NO_ASSOCIATION_EXISTS"

    const-string v1, "NO_REGISTERED_CUSTOMER"

    const-string v2, "NOT_WHITELISTED_INTERNAL_ACCOUNT"

    const-string v3, "AUTHENTICATED_SETUP_NOT_SUPPORTED"

    const-string v4, "UNSUPPORTED_ASSOCIATION"

    const-string v5, "INVALID_PROVISIONER"

    const-string v6, "NOT_ASSOCIATED_TO_CUSTOMER"

    const-string v7, "INVALID_DHA_SIGNATURE"

    const-string v8, "SIDEWALK_PROVISIONER_CUSTOMER_OPTED_OUT"

    const-string v9, "UNSUPPORTED_PROVISIONEE_FOR_ANONYMOUS_PROVISIONING"

    const-string v10, "ANONYMOUS_PROVISIONING_BLOCKED_PROVISIONER"

    const-string v11, "ANONYMOUS_PROVISIONING_BLOCKED_PROVISIONEE"

    const-string v12, "ANONYMOUS_PROVISIONING_BLOCKED_REGION"

    const-string v13, "OTHER"

    .line 22
    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/devicesetupservice/ForbiddenCause;->values:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static values()[Ljava/lang/String;
    .locals 1

    .line 27
    sget-object v0, Lcom/amazon/devicesetupservice/ForbiddenCause;->values:[Ljava/lang/String;

    return-object v0
.end method
