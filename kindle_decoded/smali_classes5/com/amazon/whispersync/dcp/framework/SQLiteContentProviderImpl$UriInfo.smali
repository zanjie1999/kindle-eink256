.class public Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl$UriInfo;
.super Ljava/lang/Object;
.source "SQLiteContentProviderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UriInfo"
.end annotation


# instance fields
.field private final mIDColumnName:Ljava/lang/String;

.field private final mIsGlobal:Z

.field private final mMIMEType:Ljava/lang/String;

.field private final mTableName:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-boolean p1, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl$UriInfo;->mIsGlobal:Z

    .line 44
    iput-object p2, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl$UriInfo;->mTableName:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl$UriInfo;->mIDColumnName:Ljava/lang/String;

    .line 46
    iput-object p4, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl$UriInfo;->mMIMEType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getIdColumnName()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl$UriInfo;->mIDColumnName:Ljava/lang/String;

    return-object v0
.end method

.method public getMIMEType()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl$UriInfo;->mMIMEType:Ljava/lang/String;

    return-object v0
.end method

.method public getTableName()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl$UriInfo;->mTableName:Ljava/lang/String;

    return-object v0
.end method

.method public isGlobal()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lcom/amazon/whispersync/dcp/framework/SQLiteContentProviderImpl$UriInfo;->mIsGlobal:Z

    return v0
.end method
