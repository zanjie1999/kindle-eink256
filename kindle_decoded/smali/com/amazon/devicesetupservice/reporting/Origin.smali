.class public Lcom/amazon/devicesetupservice/reporting/Origin;
.super Ljava/lang/Object;
.source "Origin.java"


# static fields
.field public static final DSS:Ljava/lang/String; = "dss"

.field public static final PROVISIONABLE:Ljava/lang/String; = "provisionable"

.field public static final PROVISIONER:Ljava/lang/String; = "provisioner"

.field private static final values:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "provisioner"

    const-string/jumbo v1, "provisionable"

    const-string v2, "dss"

    .line 11
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/devicesetupservice/reporting/Origin;->values:[Ljava/lang/String;

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

    .line 16
    sget-object v0, Lcom/amazon/devicesetupservice/reporting/Origin;->values:[Ljava/lang/String;

    return-object v0
.end method
