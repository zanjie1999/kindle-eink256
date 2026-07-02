.class public Lcom/amazon/kindle/content/dao/LibraryContentDAO;
.super Ljava/lang/Object;
.source "LibraryContentDAO.java"

# interfaces
.implements Lcom/amazon/kindle/content/dao/ILibraryContentDAO;


# static fields
.field private static final ALL_FIELDS_EXCLUDING_SORTABLE:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/content/ContentMetadataField;",
            ">;"
        }
    .end annotation
.end field

.field private static final ALL_FIELDS_INCLUDING_SORTABLE:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/content/ContentMetadataField;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_FIELDS_EXCLUDING_SORTABLE:[Ljava/lang/String;

.field private static final DEFAULT_FIELDS_INCLUDING_SORTABLE:[Ljava/lang/String;

.field private static final DEFAULT_SEARCH_FIELDS_EXCLUDING_SORTABLE:[Ljava/lang/String;

.field private static final DEFAULT_SEARCH_FIELDS_INCLUDING_SORTABLE:[Ljava/lang/String;

.field private static final EXTRA_FIELDS_FOR_SEARCH:[Ljava/lang/String;

.field public static final JOINED_GROUPITEMS_KINDLECONTENT:Ljava/lang/String;

.field public static final JOINED_KINDLECONTENT_LOCALCONTENT_WITH_GROUPSITEMS:Ljava/lang/String;

.field public static final JOINED_KINDLECONTENT_USERCONTENT:Ljava/lang/String;

.field public static final JOINED_TABLES:Ljava/lang/String;

.field public static final JOINED_TABLES_W_GROUP_ITEMS:Ljava/lang/String;

.field public static final JOINED_USERCONTENT_LOCALCONTENT:Ljava/lang/String;

.field private static final KINDLECONTENT_LOCALCONTENT_FIELDS_EXCLUDING_SORTABLE:[Ljava/lang/String;

.field private static final KINDLECONTENT_LOCALCONTENT_FIELDS_INCLUDING_SORTABLE:[Ljava/lang/String;

.field private static final KINDLECONTENT_LOCALCONTENT_SEARCH_EXCLUDING_SORTABLE:[Ljava/lang/String;

.field private static final KINDLECONTENT_LOCALCONTENT_SEARCH_INCLUDING_SORTABLE:[Ljava/lang/String;

.field private static final SORTABLE_FIELDS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

.field private groupService:Lcom/amazon/kindle/content/IGroupService;

.field private sortOrderUtils:Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 79
    const-class v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->TAG:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/String;

    .line 93
    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->SORTABLE_TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 95
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->SORTABLE_AUTHOR:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 96
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sput-object v1, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->SORTABLE_FIELDS:[Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/String;

    .line 99
    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_POSITION_LABEL:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 101
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->SERIES_ORDER_TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 102
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    sput-object v1, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->EXTRA_FIELDS_FOR_SEARCH:[Ljava/lang/String;

    .line 109
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->ALL_FIELDS:Ljava/util/Collection;

    sput-object v1, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->ALL_FIELDS_INCLUDING_SORTABLE:Ljava/util/Collection;

    .line 120
    new-instance v1, Ljava/util/LinkedHashSet;

    sget-object v2, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->ALL_FIELDS_INCLUDING_SORTABLE:Ljava/util/Collection;

    invoke-direct {v1, v2}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 122
    sget-object v2, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->SORTABLE_FIELDS:[Ljava/lang/String;

    array-length v5, v2

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    aget-object v7, v2, v6

    .line 123
    invoke-static {v7}, Lcom/amazon/kindle/content/ContentMetadataField;->valueOf(Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadataField;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 125
    :cond_0
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    sput-object v1, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->ALL_FIELDS_EXCLUDING_SORTABLE:Ljava/util/Collection;

    const/16 v1, 0x3a

    new-array v1, v1, [Ljava/lang/String;

    .line 133
    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 134
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->PARENT_ASIN:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 135
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->ORIGIN_TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 136
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->SHARE_ORIGIN_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 137
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x3

    aput-object v2, v1, v5

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 138
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x4

    aput-object v2, v1, v6

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->KEPT:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 139
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x5

    aput-object v2, v1, v7

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->CONTENT_TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 140
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x6

    aput-object v2, v1, v8

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 141
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x7

    aput-object v2, v1, v9

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->AUTHOR:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 142
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const/16 v10, 0x8

    aput-object v2, v1, v10

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->PUBLISHER:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 143
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const/16 v11, 0x9

    aput-object v2, v1, v11

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->PUBLICATION_DATE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 144
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const/16 v12, 0xa

    aput-object v2, v1, v12

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->LANGUAGE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 145
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const/16 v13, 0xb

    aput-object v2, v1, v13

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->FILE_PATH:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 146
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const/16 v14, 0xc

    aput-object v2, v1, v14

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->LAST_MODIFIED:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 147
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const/16 v15, 0xd

    aput-object v2, v1, v15

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->GUID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 148
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const/16 v16, 0xe

    aput-object v2, v1, v16

    const/16 v2, 0xf

    sget-object v17, Lcom/amazon/kindle/content/ContentMetadataField;->WATERMARK:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 149
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v1, v2

    const/16 v2, 0x10

    sget-object v17, Lcom/amazon/kindle/content/ContentMetadataField;->ENCRYPTED:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 150
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v1, v2

    const/16 v2, 0x11

    sget-object v17, Lcom/amazon/kindle/content/ContentMetadataField;->ARCHIVABLE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 151
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v1, v2

    const/16 v2, 0x12

    sget-object v17, Lcom/amazon/kindle/content/ContentMetadataField;->HAS_READ_ALONG:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 152
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v1, v2

    const/16 v2, 0x13

    sget-object v17, Lcom/amazon/kindle/content/ContentMetadataField;->STATE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 153
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v1, v2

    const/16 v2, 0x14

    sget-object v17, Lcom/amazon/kindle/content/ContentMetadataField;->ERROR:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 154
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v1, v2

    const/16 v2, 0x15

    sget-object v17, Lcom/amazon/kindle/content/ContentMetadataField;->ERROR_MESSAGE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 155
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v1, v2

    const/16 v2, 0x16

    sget-object v17, Lcom/amazon/kindle/content/ContentMetadataField;->ERROR_TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 156
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v1, v2

    const/16 v2, 0x17

    sget-object v17, Lcom/amazon/kindle/content/ContentMetadataField;->ERROR_LINK:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 157
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v1, v2

    const/16 v2, 0x18

    sget-object v17, Lcom/amazon/kindle/content/ContentMetadataField;->ERROR_LINK_TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 158
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v1, v2

    const/16 v2, 0x19

    sget-object v17, Lcom/amazon/kindle/content/ContentMetadataField;->ERROR_CODE_CDE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 159
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v1, v2

    const/16 v2, 0x1a

    sget-object v17, Lcom/amazon/kindle/content/ContentMetadataField;->ERROR_DISPLAY_STATUS_CDE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 160
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v1, v2

    const/16 v2, 0x1b

    sget-object v17, Lcom/amazon/kindle/content/ContentMetadataField;->USER_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 161
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v1, v2

    const/16 v2, 0x1c

    sget-object v17, Lcom/amazon/kindle/content/ContentMetadataField;->LAST_ACCESSED:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 162
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v1, v2

    const/16 v2, 0x1d

    sget-object v17, Lcom/amazon/kindle/content/ContentMetadataField;->READING_PROGRESS:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 163
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v1, v2

    const/16 v2, 0x1e

    sget-object v17, Lcom/amazon/kindle/content/ContentMetadataField;->MLT_LASTUPDATED:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 164
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v1, v2

    const/16 v2, 0x1f

    sget-object v17, Lcom/amazon/kindle/content/ContentMetadataField;->LPR:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 165
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v1, v2

    const/16 v2, 0x20

    sget-object v17, Lcom/amazon/kindle/content/ContentMetadataField;->MRPR:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 166
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v1, v2

    const/16 v2, 0x21

    sget-object v17, Lcom/amazon/kindle/content/ContentMetadataField;->CRP:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 167
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v1, v2

    const/16 v2, 0x22

    sget-object v17, Lcom/amazon/kindle/content/ContentMetadataField;->WAYPOINTS:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 168
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v1, v2

    const/16 v2, 0x23

    sget-object v17, Lcom/amazon/kindle/content/ContentMetadataField;->FPR:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 169
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v1, v2

    const/16 v2, 0x24

    sget-object v17, Lcom/amazon/kindle/content/ContentMetadataField;->DOWNLOADING_FROM_REMOTE_TODO:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 170
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v1, v2

    const/16 v2, 0x25

    sget-object v17, Lcom/amazon/kindle/content/ContentMetadataField;->IS_MOST_RECENT_ISSUE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 171
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v1, v2

    const/16 v2, 0x26

    sget-object v17, Lcom/amazon/kindle/content/ContentMetadataField;->HAS_XRAY:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 172
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v1, v2

    const/16 v2, 0x27

    sget-object v17, Lcom/amazon/kindle/content/ContentMetadataField;->IS_IN_CAROUSEL:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 173
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v1, v2

    const/16 v2, 0x28

    sget-object v17, Lcom/amazon/kindle/content/ContentMetadataField;->CLIPPING_BALANCE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 174
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v1, v2

    const/16 v2, 0x29

    sget-object v17, Lcom/amazon/kindle/content/ContentMetadataField;->TITLE_PRONUNCIATION:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 175
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v1, v2

    const/16 v2, 0x2a

    sget-object v17, Lcom/amazon/kindle/content/ContentMetadataField;->AUTHOR_PRONUNCIATION:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 176
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v1, v2

    const/16 v2, 0x2b

    sget-object v17, Lcom/amazon/kindle/content/ContentMetadataField;->SORTABLE_TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 177
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v1, v2

    const/16 v2, 0x2c

    sget-object v17, Lcom/amazon/kindle/content/ContentMetadataField;->SORTABLE_AUTHOR:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 178
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v1, v2

    const/16 v2, 0x2d

    sget-object v17, Lcom/amazon/kindle/content/ContentMetadataField;->HAS_MULTIMEDIA_CONTENT:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 179
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v1, v2

    const/16 v2, 0x2e

    sget-object v17, Lcom/amazon/kindle/content/ContentMetadataField;->DICTIONARY_TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 180
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v1, v2

    const/16 v2, 0x2f

    sget-object v17, Lcom/amazon/kindle/content/ContentMetadataField;->OWNERSHIP_TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 181
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v1, v2

    const/16 v2, 0x30

    sget-object v17, Lcom/amazon/kindle/content/ContentMetadataField;->DELIVERY_DATE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 182
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v1, v2

    const/16 v2, 0x31

    sget-object v17, Lcom/amazon/kindle/content/ContentMetadataField;->EXTENDED_METADATA:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 183
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v1, v2

    const/16 v2, 0x32

    sget-object v17, Lcom/amazon/kindle/content/ContentMetadataField;->FILE_SIZE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 184
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v1, v2

    const/16 v2, 0x33

    sget-object v17, Lcom/amazon/kindle/content/ContentMetadataField;->READ_STATE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 185
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v1, v2

    const/16 v2, 0x34

    sget-object v17, Lcom/amazon/kindle/content/ContentMetadataField;->IS_FALKOR_EPISODE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 186
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v1, v2

    const/16 v2, 0x35

    sget-object v17, Lcom/amazon/kindle/content/ContentMetadataField;->READ_STATE_ORIGIN:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 187
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v1, v2

    const/16 v2, 0x36

    sget-object v17, Lcom/amazon/kindle/content/ContentMetadataField;->IS_COMIC:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 188
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v1, v2

    const/16 v2, 0x37

    sget-object v17, Lcom/amazon/kindle/content/ContentMetadataField;->TITLE_DETAILS_JSON:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 189
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v1, v2

    const/16 v2, 0x38

    sget-object v17, Lcom/amazon/kindle/content/ContentMetadataField;->CONTENT_TAGS:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 190
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v1, v2

    const/16 v2, 0x39

    sget-object v17, Lcom/amazon/kindle/content/ContentMetadataField;->IS_HIDDEN:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 191
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v1, v2

    sput-object v1, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->DEFAULT_FIELDS_INCLUDING_SORTABLE:[Ljava/lang/String;

    .line 198
    sget-object v2, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->SORTABLE_FIELDS:[Ljava/lang/String;

    .line 199
    invoke-static {v1, v2}, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->subtract([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->DEFAULT_FIELDS_EXCLUDING_SORTABLE:[Ljava/lang/String;

    const/16 v1, 0x2f

    new-array v1, v1, [Ljava/lang/String;

    .line 206
    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 207
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->PARENT_ASIN:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 208
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->ORIGIN_TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 209
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->SHARE_ORIGIN_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 210
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 211
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->KEPT:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 212
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->CONTENT_TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 213
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 214
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->AUTHOR:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 215
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->PUBLISHER:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 216
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v11

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->PUBLICATION_DATE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 217
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v12

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->LANGUAGE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 218
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v13

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->FILE_PATH:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 219
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v14

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->GUID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 220
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v15

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->WATERMARK:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 221
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v16

    const/16 v2, 0xf

    sget-object v7, Lcom/amazon/kindle/content/ContentMetadataField;->ENCRYPTED:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 222
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v2

    const/16 v2, 0x10

    sget-object v7, Lcom/amazon/kindle/content/ContentMetadataField;->LAST_MODIFIED:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 223
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v2

    const/16 v2, 0x11

    sget-object v7, Lcom/amazon/kindle/content/ContentMetadataField;->ARCHIVABLE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 224
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v2

    const/16 v2, 0x12

    sget-object v7, Lcom/amazon/kindle/content/ContentMetadataField;->HAS_READ_ALONG:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 225
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v2

    const/16 v2, 0x13

    sget-object v7, Lcom/amazon/kindle/content/ContentMetadataField;->STATE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 226
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v2

    const/16 v2, 0x14

    sget-object v7, Lcom/amazon/kindle/content/ContentMetadataField;->ERROR:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 227
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v2

    const/16 v2, 0x15

    sget-object v7, Lcom/amazon/kindle/content/ContentMetadataField;->ERROR_MESSAGE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 228
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v2

    const/16 v2, 0x16

    sget-object v7, Lcom/amazon/kindle/content/ContentMetadataField;->ERROR_TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 229
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v2

    const/16 v2, 0x17

    sget-object v7, Lcom/amazon/kindle/content/ContentMetadataField;->ERROR_LINK:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 230
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v2

    const/16 v2, 0x18

    sget-object v7, Lcom/amazon/kindle/content/ContentMetadataField;->ERROR_LINK_TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 231
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v2

    const/16 v2, 0x19

    sget-object v7, Lcom/amazon/kindle/content/ContentMetadataField;->ERROR_CODE_CDE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 232
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v2

    const/16 v2, 0x1a

    sget-object v7, Lcom/amazon/kindle/content/ContentMetadataField;->ERROR_DISPLAY_STATUS_CDE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 233
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v2

    const/16 v2, 0x1b

    sget-object v7, Lcom/amazon/kindle/content/ContentMetadataField;->DOWNLOADING_FROM_REMOTE_TODO:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 234
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v2

    const/16 v2, 0x1c

    sget-object v7, Lcom/amazon/kindle/content/ContentMetadataField;->IS_MOST_RECENT_ISSUE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 235
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v2

    const/16 v2, 0x1d

    sget-object v7, Lcom/amazon/kindle/content/ContentMetadataField;->HAS_XRAY:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 236
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v2

    const/16 v2, 0x1e

    sget-object v7, Lcom/amazon/kindle/content/ContentMetadataField;->TITLE_PRONUNCIATION:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 237
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v2

    const/16 v2, 0x1f

    sget-object v7, Lcom/amazon/kindle/content/ContentMetadataField;->AUTHOR_PRONUNCIATION:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 238
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v2

    const/16 v2, 0x20

    sget-object v7, Lcom/amazon/kindle/content/ContentMetadataField;->SORTABLE_TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 239
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v2

    const/16 v2, 0x21

    sget-object v7, Lcom/amazon/kindle/content/ContentMetadataField;->SORTABLE_AUTHOR:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 240
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v2

    const/16 v2, 0x22

    sget-object v7, Lcom/amazon/kindle/content/ContentMetadataField;->HAS_MULTIMEDIA_CONTENT:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 241
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v2

    const/16 v2, 0x23

    sget-object v7, Lcom/amazon/kindle/content/ContentMetadataField;->DICTIONARY_TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 242
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v2

    const/16 v2, 0x24

    sget-object v7, Lcom/amazon/kindle/content/ContentMetadataField;->OWNERSHIP_TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 243
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v2

    const/16 v2, 0x25

    sget-object v7, Lcom/amazon/kindle/content/ContentMetadataField;->DELIVERY_DATE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 244
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v2

    const/16 v2, 0x26

    sget-object v7, Lcom/amazon/kindle/content/ContentMetadataField;->EXTENDED_METADATA:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 245
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v2

    const/16 v2, 0x27

    sget-object v7, Lcom/amazon/kindle/content/ContentMetadataField;->FILE_SIZE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 246
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v2

    const/16 v2, 0x28

    sget-object v7, Lcom/amazon/kindle/content/ContentMetadataField;->IS_FALKOR_EPISODE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 247
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v2

    const/16 v2, 0x29

    sget-object v7, Lcom/amazon/kindle/content/ContentMetadataField;->READ_STATE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 248
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v2

    const/16 v2, 0x2a

    sget-object v7, Lcom/amazon/kindle/content/ContentMetadataField;->READ_STATE_ORIGIN:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 249
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v2

    const/16 v2, 0x2b

    sget-object v7, Lcom/amazon/kindle/content/ContentMetadataField;->IS_COMIC:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 250
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v2

    const/16 v2, 0x2c

    sget-object v7, Lcom/amazon/kindle/content/ContentMetadataField;->TITLE_DETAILS_JSON:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 251
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v2

    const/16 v2, 0x2d

    sget-object v7, Lcom/amazon/kindle/content/ContentMetadataField;->CONTENT_TAGS:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 252
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v2

    const/16 v2, 0x2e

    sget-object v7, Lcom/amazon/kindle/content/ContentMetadataField;->IS_HIDDEN:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 253
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v2

    sput-object v1, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->KINDLECONTENT_LOCALCONTENT_FIELDS_INCLUDING_SORTABLE:[Ljava/lang/String;

    .line 260
    sget-object v2, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->SORTABLE_FIELDS:[Ljava/lang/String;

    .line 261
    invoke-static {v1, v2}, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->subtract([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->KINDLECONTENT_LOCALCONTENT_FIELDS_EXCLUDING_SORTABLE:[Ljava/lang/String;

    .line 267
    sget-object v1, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->DEFAULT_FIELDS_INCLUDING_SORTABLE:[Ljava/lang/String;

    sget-object v2, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->EXTRA_FIELDS_FOR_SEARCH:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->add([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->DEFAULT_SEARCH_FIELDS_INCLUDING_SORTABLE:[Ljava/lang/String;

    .line 268
    sget-object v2, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->SORTABLE_FIELDS:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->subtract([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->DEFAULT_SEARCH_FIELDS_EXCLUDING_SORTABLE:[Ljava/lang/String;

    .line 274
    sget-object v1, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->KINDLECONTENT_LOCALCONTENT_FIELDS_INCLUDING_SORTABLE:[Ljava/lang/String;

    sget-object v2, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->EXTRA_FIELDS_FOR_SEARCH:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->add([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->KINDLECONTENT_LOCALCONTENT_SEARCH_INCLUDING_SORTABLE:[Ljava/lang/String;

    .line 275
    sget-object v2, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->SORTABLE_FIELDS:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->subtract([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->KINDLECONTENT_LOCALCONTENT_SEARCH_EXCLUDING_SORTABLE:[Ljava/lang/String;

    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "(("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "UserContent"

    .line 281
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " uc join "

    .line 282
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "KindleContent"

    .line 283
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " kc on kc."

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 284
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " = uc."

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Lcom/amazon/kindle/content/ContentMetadataField;->KEY:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 285
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ") uk left join "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "LocalContent"

    .line 286
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " lc on uk."

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 287
    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " = lc."

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v11, Lcom/amazon/kindle/content/ContentMetadataField;->KEY:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 288
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ") kul left join "

    .line 289
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "GroupItems"

    .line 290
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " gi on kul.id = gi."

    .line 291
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lcom/amazon/kindle/content/ContentMetadataField;->ITEM_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 292
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->JOINED_TABLES_W_GROUP_ITEMS:Ljava/lang/String;

    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v12, "("

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 298
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " uc join "

    .line 299
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " kc on kc."

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v13, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 301
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v13, Lcom/amazon/kindle/content/ContentMetadataField;->KEY:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 302
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ") uk left join "

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " lc on uk."

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v13, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 304
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v13, Lcom/amazon/kindle/content/ContentMetadataField;->KEY:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 305
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->JOINED_TABLES:Ljava/lang/String;

    .line 310
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v13, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->JOINED_TABLES:Ljava/lang/String;

    .line 311
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ") ukl left join "

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "RecommendedContent"

    .line 312
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " rc on ukl."

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v13, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 313
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " = rc."

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v13, Lcom/amazon/kindle/content/ContentMetadataField;->KEY:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 314
    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 320
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " kc left join "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " lc on kc."

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 322
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lcom/amazon/kindle/content/ContentMetadataField;->KEY:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 323
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ") lk left join "

    .line 324
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " gi on lk.id = gi."

    .line 326
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Lcom/amazon/kindle/content/ContentMetadataField;->ITEM_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 327
    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->JOINED_KINDLECONTENT_LOCALCONTENT_WITH_GROUPSITEMS:Ljava/lang/String;

    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " kc left join "

    .line 333
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " uc on kc."

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 335
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/amazon/kindle/content/ContentMetadataField;->KEY:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 336
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->JOINED_KINDLECONTENT_USERCONTENT:Ljava/lang/String;

    .line 341
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " uc left join "

    .line 342
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " lc on uc."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->KEY:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 344
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->KEY:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 345
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->JOINED_USERCONTENT_LOCALCONTENT:Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/Object;

    aput-object v11, v1, v3

    .line 350
    sget-object v2, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->JOINED_KINDLECONTENT_USERCONTENT:Ljava/lang/String;

    aput-object v2, v1, v4

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 353
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->ITEM_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    const-string v0, "%s git JOIN (%s) content ON content.%s = git.%s"

    .line 350
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->JOINED_GROUPITEMS_KINDLECONTENT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 362
    invoke-static {p1}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleContentDB(Landroid/content/Context;)Lcom/amazon/kindle/content/db/KindleContentDB;

    move-result-object v0

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getGroupService()Lcom/amazon/kindle/content/IGroupService;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/kindle/content/dao/LibraryContentDAO;-><init>(Landroid/content/Context;Lcom/amazon/kindle/content/db/KindleContentDB;Lcom/amazon/kindle/content/IGroupService;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kindle/content/db/KindleContentDB;Lcom/amazon/kindle/content/IGroupService;)V
    .locals 4

    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    iput-object p2, p0, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    .line 367
    iput-object p1, p0, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->context:Landroid/content/Context;

    .line 368
    iput-object p3, p0, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->groupService:Lcom/amazon/kindle/content/IGroupService;

    .line 369
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 370
    sget-object p1, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->TAG:Ljava/lang/String;

    const-string p3, "SortOrderUtils initialization started"

    invoke-static {p1, p3}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    invoke-static {}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->getInstance()Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->sortOrderUtils:Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;

    .line 372
    invoke-virtual {p1, p2}, Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;->init(Lcom/amazon/kindle/content/db/KindleContentDB;)V

    .line 373
    sget-object p1, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "SortOrderUtils initialization completed, duration:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 376
    sget-object p3, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->TAG:Ljava/lang/String;

    const-string v0, "PubSub subscribe started"

    invoke-static {p3, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p3

    iget-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->sortOrderUtils:Lcom/amazon/kindle/content/dao/LibraryContentSortOrderUtils;

    invoke-interface {p3, v0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 378
    sget-object p3, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PubSub subscribe completed, duration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static add([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 2457
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 2458
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    .line 2459
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method private addUserToFilter(Lcom/amazon/kindle/content/filter/SQLQueryFilter;Ljava/lang/String;)Lcom/amazon/kindle/content/filter/SQLQueryFilter;
    .locals 6

    if-nez p2, :cond_0

    return-object p1

    .line 1438
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/content/filter/SQLQueryFilter;->getWhereClause()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    new-array v0, v2, [Ljava/lang/Object;

    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->USER_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1439
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const-string v3, "%s = ?"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1440
    invoke-interface {p1}, Lcom/amazon/kindle/content/filter/SQLQueryFilter;->getWhereClause()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->USER_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const-string v3, "(%s) AND %s = ?"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1442
    :goto_0
    invoke-interface {p1}, Lcom/amazon/kindle/content/filter/SQLQueryFilter;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    new-array v4, v2, [Ljava/lang/String;

    goto :goto_1

    .line 1443
    :cond_2
    array-length v4, v3

    add-int/2addr v4, v2

    new-array v4, v4, [Ljava/lang/String;

    :goto_1
    if-eqz v3, :cond_3

    .line 1446
    array-length v5, v3

    invoke-static {v3, v1, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1448
    :cond_3
    array-length v1, v4

    sub-int/2addr v1, v2

    aput-object p2, v4, v1

    .line 1450
    new-instance p2, Lcom/amazon/kindle/content/dao/LibraryContentDAO$1;

    invoke-direct {p2, p0, v0, v4, p1}, Lcom/amazon/kindle/content/dao/LibraryContentDAO$1;-><init>(Lcom/amazon/kindle/content/dao/LibraryContentDAO;Ljava/lang/String;[Ljava/lang/String;Lcom/amazon/kindle/content/filter/SQLQueryFilter;)V

    return-object p2
.end method

.method private allFields()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/content/ContentMetadataField;",
            ">;"
        }
    .end annotation

    .line 2463
    invoke-virtual {p0}, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->supportsSortableColumns()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->ALL_FIELDS_INCLUDING_SORTABLE:Ljava/util/Collection;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->ALL_FIELDS_EXCLUDING_SORTABLE:Ljava/util/Collection;

    :goto_0
    return-object v0
.end method

.method private defaultFields()[Ljava/lang/String;
    .locals 1

    .line 2467
    invoke-virtual {p0}, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->supportsSortableColumns()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->DEFAULT_FIELDS_INCLUDING_SORTABLE:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->DEFAULT_FIELDS_EXCLUDING_SORTABLE:[Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method private defaultSearchFields()[Ljava/lang/String;
    .locals 1

    .line 2614
    invoke-virtual {p0}, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->supportsSortableColumns()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->DEFAULT_SEARCH_FIELDS_INCLUDING_SORTABLE:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->DEFAULT_SEARCH_FIELDS_EXCLUDING_SORTABLE:[Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method private getFormattedExceptionMessageWithSelectionAndNullSelectionArgs(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 2539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2540
    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_1

    .line 2541
    aget-object v3, p2, v2

    if-nez v3, :cond_0

    .line 2542
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p1, p2, v1

    .line 2548
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    aput-object p1, p2, v0

    const-string p1, "Error querying database for selection: [%s] , nullSelectionArgs: [%s] "

    .line 2547
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static getInt(Landroid/database/Cursor;II)I
    .locals 1

    .line 1828
    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1829
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    return p0

    :cond_0
    return p2
.end method

.method static getLong(Landroid/database/Cursor;IJ)J
    .locals 1

    .line 1854
    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1855
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p0

    return-wide p0

    :cond_0
    return-wide p2
.end method

.method static getString(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1841
    invoke-interface {p0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1842
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p2
.end method

.method private kindleContentLocalContentFields()[Ljava/lang/String;
    .locals 1

    .line 2471
    invoke-virtual {p0}, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->supportsSortableColumns()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->KINDLECONTENT_LOCALCONTENT_FIELDS_INCLUDING_SORTABLE:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->KINDLECONTENT_LOCALCONTENT_FIELDS_EXCLUDING_SORTABLE:[Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method private kindleContentLocalContentSearchFields()[Ljava/lang/String;
    .locals 1

    .line 2620
    invoke-virtual {p0}, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->supportsSortableColumns()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->KINDLECONTENT_LOCALCONTENT_SEARCH_INCLUDING_SORTABLE:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->KINDLECONTENT_LOCALCONTENT_SEARCH_EXCLUDING_SORTABLE:[Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method static parseFields(Lcom/amazon/kindle/content/ContentMetadata;Ljava/util/Collection;Landroid/content/ContentValues;Landroid/content/ContentValues;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/content/ContentMetadataField;",
            ">;",
            "Landroid/content/ContentValues;",
            "Landroid/content/ContentValues;",
            "Landroid/content/ContentValues;",
            "Landroid/content/ContentValues;",
            ")V"
        }
    .end annotation

    .line 994
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getReadData()Lcom/amazon/kindle/content/ReadData;

    move-result-object v0

    .line 996
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/content/ContentMetadataField;

    .line 997
    sget-object v2, Lcom/amazon/kindle/content/dao/LibraryContentDAO$3;->$SwitchMap$com$amazon$kindle$content$ContentMetadataField:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1216
    :pswitch_1
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getTitleDetailsJson()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1209
    :pswitch_2
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getExtendedMetadata()Lcom/amazon/kindle/content/ExtendedMetadataWrapper;

    move-result-object v2

    .line 1210
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/amazon/kindle/content/ExtendedMetadataWrapper;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const-string v2, ""

    :goto_1
    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1203
    :pswitch_3
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getOrderRank()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p5, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 1200
    :pswitch_4
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getCampaignSlot()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p5, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1167
    :pswitch_5
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->hasUserContent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1168
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    .line 1169
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getOwner()Ljava/lang/String;

    move-result-object v2

    .line 1168
    invoke-virtual {p4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1231
    :pswitch_6
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getIsHidden()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 1206
    :pswitch_7
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getDeliveryDate()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 1197
    :pswitch_8
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getSortableAuthor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1194
    :pswitch_9
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getSortableTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1191
    :pswitch_a
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getAuthorPronunciation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1188
    :pswitch_b
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getTitlePronunciation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1161
    :pswitch_c
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->hasUserContent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1162
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    .line 1163
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getClippingBalance()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1162
    invoke-virtual {p4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 1185
    :pswitch_d
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getIsInCarousel()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 1179
    :pswitch_e
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->hasUserContent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1180
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    .line 1181
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getMLTLastUpdated()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1180
    invoke-virtual {p4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 1155
    :pswitch_f
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->hasUserContent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1156
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    .line 1157
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getLastAccessTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1156
    invoke-virtual {p4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 1173
    :pswitch_10
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->hasUserContent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1174
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    .line 1175
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getReadingProgress()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1174
    invoke-virtual {p4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 1146
    :pswitch_11
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->hasUserContent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1147
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    .line 1148
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getWaypointsAsJSON()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1147
    invoke-virtual {p4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1137
    :pswitch_12
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->hasUserContent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1138
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    .line 1139
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getMrpr()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1138
    invoke-virtual {p4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1131
    :pswitch_13
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->hasUserContent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1132
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    .line 1133
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getFurthestPositionRead()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 1132
    invoke-virtual {p4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1125
    :pswitch_14
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->hasUserContent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1126
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    .line 1127
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getLastReadPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 1126
    invoke-virtual {p4, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1118
    :pswitch_15
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->hasLocalContent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1119
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getOwnershipType()Lcom/amazon/kindle/model/content/ContentOwnershipType;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1120
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getOwnershipType()Lcom/amazon/kindle/model/content/ContentOwnershipType;

    move-result-object v2

    goto :goto_2

    :cond_2
    sget-object v2, Lcom/amazon/kindle/model/content/ContentOwnershipType;->Unknown:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    .line 1121
    :goto_2
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1112
    :pswitch_16
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->hasLocalContent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1113
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    .line 1114
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->isEncrypted()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1113
    invoke-virtual {p3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 1152
    :pswitch_17
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getFileSize()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 1106
    :pswitch_18
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->hasLocalContent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1107
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    .line 1108
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getLastModified()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1107
    invoke-virtual {p3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 1090
    :pswitch_19
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->hasLocalContent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1091
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    .line 1092
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getFilePath()Ljava/lang/String;

    move-result-object v2

    .line 1091
    invoke-virtual {p3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1101
    :pswitch_1a
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->hasLocalContent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1102
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getGuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1096
    :pswitch_1b
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->hasLocalContent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1097
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getWaterMark()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1228
    :pswitch_1c
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ReadData;->getReadStateOrigin()Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1225
    :pswitch_1d
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amazon/kindle/content/ReadData;->getReadState()Lcom/amazon/kindle/krx/content/IBook$ReadState;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1222
    :pswitch_1e
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getIsFalkorEpisode()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 1213
    :pswitch_1f
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getIsComic()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 1031
    :pswitch_20
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    .line 1032
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getPublicationDateInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 1031
    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 1087
    :pswitch_21
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getDictionaryType()Lcom/amazon/kindle/model/content/DictionaryType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1035
    :pswitch_22
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    .line 1036
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 1035
    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1219
    :pswitch_23
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getContentTags()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1047
    :pswitch_24
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    .line 1048
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getContentType()Ljava/lang/String;

    move-result-object v2

    .line 1047
    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1067
    :pswitch_25
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getCDEErrorCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1064
    :pswitch_26
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getErrorLinkTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1061
    :pswitch_27
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getErrorLink()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1058
    :pswitch_28
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getErrorTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1055
    :pswitch_29
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1073
    :pswitch_2a
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    .line 1074
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getPublisher()Ljava/lang/String;

    move-result-object v2

    .line 1073
    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1019
    :pswitch_2b
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    .line 1020
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getAuthor()Ljava/lang/String;

    move-result-object v2

    .line 1019
    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1007
    :pswitch_2c
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    .line 1008
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getShareOriginId()Ljava/lang/String;

    move-result-object v2

    .line 1007
    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1003
    :pswitch_2d
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    .line 1004
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getOriginType()Ljava/lang/String;

    move-result-object v2

    .line 1003
    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 999
    :pswitch_2e
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    .line 1000
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getParentAsin()Ljava/lang/String;

    move-result-object v2

    .line 999
    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1039
    :pswitch_2f
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    .line 1040
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    .line 1039
    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1027
    :pswitch_30
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    .line 1028
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    .line 1027
    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1051
    :pswitch_31
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    .line 1052
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 1051
    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1023
    :pswitch_32
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    .line 1024
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->getError()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1023
    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 1083
    :pswitch_33
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->hasMultimediaContent()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 1070
    :pswitch_34
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->shouldDisplayCDEError()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 1080
    :pswitch_35
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->hasXray()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 1015
    :pswitch_36
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    .line 1016
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->isDownloadedFromRemoteTodo()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1015
    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 1043
    :pswitch_37
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    .line 1044
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->isKept()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1043
    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 1077
    :pswitch_38
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->hasReadAlongTitle()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 1011
    :pswitch_39
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    .line 1012
    invoke-virtual {p0}, Lcom/amazon/kindle/content/ContentMetadata;->isArchivable()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1011
    invoke-virtual {p2, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_0
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method static parseFields(Ljava/util/Map;Landroid/content/ContentValues;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/content/ContentMetadataField;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/content/ContentValues;",
            "Landroid/content/ContentValues;",
            "Landroid/content/ContentValues;",
            ")V"
        }
    .end annotation

    .line 825
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 826
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 827
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/content/ContentMetadataField;

    .line 828
    sget-object v2, Lcom/amazon/kindle/content/dao/LibraryContentDAO$3;->$SwitchMap$com$amazon$kindle$content$ContentMetadataField:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, -0x1

    const-wide/16 v4, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v8, ""

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 982
    :pswitch_0
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/Boolean;

    .line 983
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v6, 0x0

    .line 982
    :goto_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 978
    :pswitch_1
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    instance-of v2, v1, Ljava/lang/Long;

    if-eqz v2, :cond_1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :cond_1
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_0

    .line 975
    :pswitch_2
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_2

    move-object v8, v1

    check-cast v8, Ljava/lang/String;

    :cond_2
    invoke-virtual {p1, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 972
    :pswitch_3
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_3

    move-object v8, v1

    check-cast v8, Ljava/lang/String;

    :cond_3
    invoke-virtual {p1, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 969
    :pswitch_4
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_4

    move-object v8, v1

    check-cast v8, Ljava/lang/String;

    :cond_4
    invoke-virtual {p1, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 966
    :pswitch_5
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_5

    move-object v8, v1

    check-cast v8, Ljava/lang/String;

    :cond_5
    invoke-virtual {p1, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 962
    :pswitch_6
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    instance-of v2, v1, Ljava/lang/Long;

    if-eqz v2, :cond_6

    check-cast v1, Ljava/lang/Long;

    .line 963
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_2

    :cond_6
    const-wide/16 v1, 0x0

    :goto_2
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 962
    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 958
    :pswitch_7
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_7

    check-cast v1, Ljava/lang/Boolean;

    .line 959
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_3

    :cond_7
    const/4 v6, 0x0

    .line 958
    :goto_3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 953
    :pswitch_8
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    instance-of v2, v1, Ljava/lang/Long;

    if-eqz v2, :cond_8

    check-cast v1, Ljava/lang/Long;

    .line 954
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :cond_8
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 953
    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 947
    :pswitch_9
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_9

    check-cast v1, Ljava/lang/Integer;

    .line 949
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 948
    :cond_9
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 946
    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 941
    :pswitch_a
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_a

    check-cast v1, Ljava/lang/String;

    goto :goto_4

    :cond_a
    const-string/jumbo v1, "{}"

    .line 940
    :goto_4
    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 935
    :pswitch_b
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_b

    move-object v8, v1

    check-cast v8, Ljava/lang/String;

    .line 934
    :cond_b
    invoke-virtual {p3, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 929
    :pswitch_c
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_c

    move-object v8, v1

    check-cast v8, Ljava/lang/String;

    .line 928
    :cond_c
    invoke-virtual {p3, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 923
    :pswitch_d
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_d

    check-cast v1, Ljava/lang/String;

    goto :goto_5

    .line 925
    :cond_d
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 922
    :goto_5
    invoke-virtual {p3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 916
    :pswitch_e
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    instance-of v2, v1, Lcom/amazon/kindle/model/content/ContentOwnershipType;

    if-eqz v2, :cond_e

    check-cast v1, Lcom/amazon/kindle/model/content/ContentOwnershipType;

    goto :goto_6

    .line 917
    :cond_e
    sget-object v1, Lcom/amazon/kindle/model/content/ContentOwnershipType;->Unknown:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    :goto_6
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    .line 916
    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 912
    :pswitch_f
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_f

    check-cast v1, Ljava/lang/Boolean;

    .line 913
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_f

    goto :goto_7

    :cond_f
    const/4 v6, 0x0

    .line 912
    :goto_7
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 907
    :pswitch_10
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    instance-of v2, v1, Ljava/lang/Long;

    if-eqz v2, :cond_10

    check-cast v1, Ljava/lang/Long;

    .line 908
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :cond_10
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 907
    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 901
    :pswitch_11
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_11

    move-object v8, v1

    check-cast v8, Ljava/lang/String;

    :cond_11
    invoke-virtual {p2, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 895
    :pswitch_12
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    instance-of v2, v1, Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;

    if-eqz v2, :cond_12

    check-cast v1, Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;

    goto :goto_8

    :cond_12
    sget-object v1, Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;->OTHER:Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;

    :goto_8
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 892
    :pswitch_13
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    instance-of v2, v1, Lcom/amazon/kindle/krx/content/IBook$ReadState;

    if-eqz v2, :cond_13

    check-cast v1, Lcom/amazon/kindle/krx/content/IBook$ReadState;

    goto :goto_9

    :cond_13
    sget-object v1, Lcom/amazon/kindle/krx/content/IBook$ReadState;->UNREAD:Lcom/amazon/kindle/krx/content/IBook$ReadState;

    :goto_9
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 888
    :pswitch_14
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_14

    check-cast v1, Ljava/lang/Boolean;

    .line 889
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_14

    goto :goto_a

    :cond_14
    const/4 v6, 0x0

    .line 888
    :goto_a
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 883
    :pswitch_15
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_15

    check-cast v1, Ljava/lang/Boolean;

    .line 884
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_15

    goto :goto_b

    :cond_15
    const/4 v6, 0x0

    .line 883
    :goto_b
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 877
    :pswitch_16
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    instance-of v2, v1, Ljava/lang/Long;

    if-eqz v2, :cond_16

    check-cast v1, Ljava/lang/Long;

    .line 878
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :cond_16
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 877
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_0

    .line 873
    :pswitch_17
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_17

    move-object v8, v1

    check-cast v8, Ljava/lang/String;

    :cond_17
    invoke-virtual {p1, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 856
    :pswitch_18
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    instance-of v2, v1, Lcom/amazon/kcp/library/models/BookType;

    if-eqz v2, :cond_18

    check-cast v1, Lcom/amazon/kcp/library/models/BookType;

    .line 857
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    .line 856
    :cond_18
    invoke-virtual {p1, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 852
    :pswitch_19
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    instance-of v2, v1, Lcom/amazon/kindle/model/content/ContentState;

    if-eqz v2, :cond_19

    check-cast v1, Lcom/amazon/kindle/model/content/ContentState;

    .line 853
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    .line 852
    :cond_19
    invoke-virtual {p1, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 848
    :pswitch_1a
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1a

    move-object v8, v1

    check-cast v8, Ljava/lang/String;

    :cond_1a
    invoke-virtual {p1, v0, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 843
    :pswitch_1b
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_1b

    check-cast v1, Ljava/lang/Integer;

    .line 845
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 844
    :cond_1b
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 842
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    .line 837
    :pswitch_1c
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_1c

    check-cast v1, Ljava/lang/Boolean;

    .line 838
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_c

    :cond_1c
    const/4 v6, 0x0

    .line 837
    :goto_c
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0

    :cond_1d
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static subtract([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 2451
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    .line 2452
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashSet;->removeAll(Ljava/util/Collection;)Z

    .line 2453
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/LinkedHashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public addOrUpdateMetadata(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;)",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/content/ContentUpdate;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 483
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Add or update metadata: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 487
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 488
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 490
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 491
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 492
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 493
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 495
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/amazon/kindle/content/ContentMetadata;

    .line 496
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    .line 497
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V

    .line 498
    new-instance v13, Landroid/content/ContentValues;

    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 499
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 503
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->supportsSortableColumns()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 504
    iget-object v9, v1, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->context:Landroid/content/Context;

    invoke-static {v9}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v9

    .line 505
    invoke-interface {v9}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getSortFriendlyFormatter()Lcom/amazon/kindle/utils/ISortFriendlyFormatter;

    move-result-object v9

    .line 507
    invoke-virtual {v8}, Lcom/amazon/kindle/content/ContentMetadata;->getTitle()Ljava/lang/String;

    move-result-object v10

    .line 508
    invoke-virtual {v8}, Lcom/amazon/kindle/content/ContentMetadata;->getAuthor()Ljava/lang/String;

    move-result-object v11

    .line 510
    invoke-static {v10}, Lcom/amazon/kindle/util/StringUtils;->isArabicString(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 511
    invoke-static {v10}, Lcom/amazon/kcp/util/Utils;->stripDiacritics(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 514
    :cond_1
    invoke-static {v11}, Lcom/amazon/kindle/util/StringUtils;->isArabicString(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 515
    invoke-static {v11}, Lcom/amazon/kcp/util/Utils;->stripDiacritics(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :cond_2
    move-object/from16 v16, v7

    .line 518
    invoke-virtual {v8}, Lcom/amazon/kindle/content/ContentMetadata;->getLanguage()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v17, v12

    .line 519
    invoke-virtual {v8}, Lcom/amazon/kindle/content/ContentMetadata;->getTitlePronunciation()Ljava/lang/String;

    move-result-object v12

    .line 518
    invoke-interface {v9, v7, v12, v10}, Lcom/amazon/kindle/utils/ISortFriendlyFormatter;->format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 520
    invoke-virtual {v8}, Lcom/amazon/kindle/content/ContentMetadata;->getLanguage()Ljava/lang/String;

    move-result-object v10

    .line 521
    invoke-virtual {v8}, Lcom/amazon/kindle/content/ContentMetadata;->getAuthorPronunciation()Ljava/lang/String;

    move-result-object v12

    .line 520
    invoke-interface {v9, v10, v12, v11}, Lcom/amazon/kindle/utils/ISortFriendlyFormatter;->format(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 523
    invoke-virtual {v8, v7}, Lcom/amazon/kindle/content/ContentMetadata;->setSortableTitle(Ljava/lang/String;)V

    .line 524
    invoke-virtual {v8, v9}, Lcom/amazon/kindle/content/ContentMetadata;->setSortableAuthor(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    move-object/from16 v16, v7

    move-object/from16 v17, v12

    .line 527
    :goto_1
    invoke-virtual {v8}, Lcom/amazon/kindle/content/ContentMetadata;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    invoke-direct/range {p0 .. p0}, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->allFields()Ljava/util/Collection;

    move-result-object v10

    move-object v9, v8

    move-object v11, v15

    move-object/from16 v7, v17

    move-object v12, v13

    move-object/from16 v17, v2

    move-object v2, v13

    move-object v13, v14

    move-object/from16 v18, v0

    move-object v0, v14

    move-object v14, v7

    invoke-static/range {v9 .. v14}, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->parseFields(Lcom/amazon/kindle/content/ContentMetadata;Ljava/util/Collection;Landroid/content/ContentValues;Landroid/content/ContentValues;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 530
    sget-object v9, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Lcom/amazon/kindle/content/ContentMetadata;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v15, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    invoke-virtual {v8}, Lcom/amazon/kindle/content/ContentMetadata;->getOwner()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 534
    sget-object v9, Lcom/amazon/kindle/content/ContentMetadataField;->KEY:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Lcom/amazon/kindle/content/ContentMetadata;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    sget-object v9, Lcom/amazon/kindle/content/ContentMetadataField;->USER_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    .line 536
    invoke-virtual {v8}, Lcom/amazon/kindle/content/ContentMetadata;->getOwner()Ljava/lang/String;

    move-result-object v10

    .line 535
    invoke-virtual {v0, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    :cond_4
    sget-object v9, Lcom/amazon/kindle/content/ContentMetadataField;->KEY:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Lcom/amazon/kindle/content/ContentMetadata;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    invoke-virtual {v8}, Lcom/amazon/kindle/content/ContentMetadata;->isLocal()Z

    move-result v9

    if-nez v9, :cond_5

    .line 540
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 542
    :cond_5
    sget-object v9, Lcom/amazon/kindle/content/ContentMetadataField;->KEY:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Lcom/amazon/kindle/content/ContentMetadata;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    invoke-virtual {v8}, Lcom/amazon/kindle/content/ContentMetadata;->getCampaignSlot()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_6

    .line 544
    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    .line 546
    :cond_6
    invoke-interface {v3, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 547
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 548
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 549
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v7, v16

    move-object/from16 v2, v17

    move-object/from16 v0, v18

    goto/16 :goto_0

    :cond_7
    move-object/from16 v18, v0

    move-object/from16 v17, v2

    .line 552
    iget-object v0, v1, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 553
    iget-object v0, v1, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 556
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-interface/range {v18 .. v18}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 558
    sget-object v7, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    const/4 v15, 0x0

    invoke-static {v0, v15, v15, v7, v15}, Lcom/amazon/kindle/db/Batch;->generateBatches(Ljava/util/Collection;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 559
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const/4 v8, 0x1

    const/4 v14, 0x0

    if-eqz v7, :cond_b

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/amazon/kindle/db/Batch;

    const-string v9, "KindleContent"

    new-array v10, v8, [Ljava/lang/String;

    .line 560
    sget-object v8, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v10, v14

    .line 561
    invoke-virtual {v7}, Lcom/amazon/kindle/db/Batch;->getWhereClause()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7}, Lcom/amazon/kindle/db/Batch;->getBindArgs()[Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v7, v2

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move-object v12, v13

    move-object/from16 v13, v19

    const/4 v15, 0x0

    move-object/from16 v14, v20

    .line 560
    invoke-virtual/range {v7 .. v14}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 562
    :goto_3
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 563
    invoke-interface {v7, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :cond_8
    if-eqz v7, :cond_9

    .line 565
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    :cond_9
    const/4 v15, 0x0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v3, v0

    .line 560
    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    move-object v4, v0

    if-eqz v7, :cond_a

    .line 565
    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v5, v0

    :try_start_5
    invoke-virtual {v3, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a
    :goto_4
    throw v4

    :cond_b
    const/4 v15, 0x0

    const/4 v14, 0x0

    .line 567
    :goto_5
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v14, v7, :cond_36

    .line 568
    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/ContentValues;

    .line 569
    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/ContentValues;

    .line 570
    invoke-interface {v5, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/ContentValues;

    .line 571
    invoke-interface {v6, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ContentValues;

    .line 575
    sget-object v12, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v12}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v0, v12}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v12
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    const-string v13, "KindleContent"

    const-wide/16 v20, -0x1

    if-eqz v12, :cond_c

    const/4 v12, 0x0

    .line 576
    :try_start_6
    invoke-virtual {v2, v13, v12, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v22

    goto :goto_6

    :cond_c
    move-wide/from16 v22, v20

    .line 582
    :goto_6
    invoke-virtual {v10}, Landroid/content/ContentValues;->size()I

    move-result v12

    const/4 v15, 0x5

    if-lez v12, :cond_d

    const-string v12, "LocalContent"

    const/4 v8, 0x0

    .line 583
    invoke-virtual {v2, v12, v8, v10, v15}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 588
    :cond_d
    invoke-virtual {v9}, Landroid/content/ContentValues;->size()I

    move-result v8

    if-lez v8, :cond_e

    .line 589
    sget-object v8, Lcom/amazon/kindle/content/ContentMetadataField;->USER_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v8, "UserContent"

    const/4 v10, 0x4

    const/4 v15, 0x0

    .line 591
    invoke-virtual {v2, v8, v15, v9, v10}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    goto :goto_7

    :cond_e
    const/4 v12, 0x0

    .line 597
    :goto_7
    invoke-virtual {v11}, Landroid/content/ContentValues;->size()I

    move-result v8

    if-lez v8, :cond_f

    const-string v8, "RecommendedContent"

    const/4 v9, 0x5

    const/4 v10, 0x0

    .line 598
    invoke-virtual {v2, v8, v10, v11, v9}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    goto :goto_8

    :cond_f
    const/4 v10, 0x0

    :goto_8
    cmp-long v8, v22, v20

    if-nez v8, :cond_35

    .line 608
    sget-object v8, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 609
    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 608
    invoke-virtual {v1, v8, v12}, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v8

    .line 610
    invoke-virtual {v8}, Lcom/amazon/kindle/content/ContentMetadata;->getId()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v11, v18

    invoke-interface {v11, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/amazon/kindle/content/ContentMetadata;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    move-object/from16 v12, p1

    .line 612
    :try_start_7
    invoke-interface {v12, v9}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_9

    :catch_0
    nop

    :goto_9
    if-eqz v9, :cond_34

    .line 618
    :try_start_8
    invoke-virtual {v8}, Lcom/amazon/kindle/content/ContentMetadata;->clone()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/amazon/kindle/content/ContentMetadata;

    .line 619
    invoke-virtual {v8}, Lcom/amazon/kindle/content/ContentMetadata;->isArchivable()Z

    move-result v18

    if-nez v18, :cond_10

    invoke-virtual {v9}, Lcom/amazon/kindle/content/ContentMetadata;->isArchivable()Z

    move-result v18

    if-eqz v18, :cond_10

    const/16 v18, 0x1

    goto :goto_a

    :cond_10
    const/16 v18, 0x0

    .line 626
    :goto_a
    invoke-virtual {v8}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v10

    move-object/from16 v20, v0

    sget-object v0, Lcom/amazon/kindle/model/content/ContentState;->REMOTE:Lcom/amazon/kindle/model/content/ContentState;

    if-ne v10, v0, :cond_11

    invoke-virtual {v9}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v0

    sget-object v10, Lcom/amazon/kindle/model/content/ContentState;->QUEUED:Lcom/amazon/kindle/model/content/ContentState;

    if-ne v0, v10, :cond_11

    const/4 v0, 0x1

    goto :goto_b

    :cond_11
    const/4 v0, 0x0

    .line 627
    :goto_b
    invoke-virtual {v8}, Lcom/amazon/kindle/content/ContentMetadata;->getDictionaryType()Lcom/amazon/kindle/model/content/DictionaryType;

    move-result-object v10

    invoke-virtual {v9}, Lcom/amazon/kindle/content/ContentMetadata;->getDictionaryType()Lcom/amazon/kindle/model/content/DictionaryType;

    move-result-object v1

    if-eq v10, v1, :cond_12

    const/4 v1, 0x1

    goto :goto_c

    :cond_12
    const/4 v1, 0x0

    .line 628
    :goto_c
    invoke-virtual {v8}, Lcom/amazon/kindle/content/ContentMetadata;->isArchivable()Z

    move-result v10

    if-eqz v10, :cond_13

    invoke-virtual {v9}, Lcom/amazon/kindle/content/ContentMetadata;->isArchivable()Z

    move-result v10

    if-nez v10, :cond_13

    move-object/from16 v21, v3

    const/4 v10, 0x1

    goto :goto_d

    :cond_13
    move-object/from16 v21, v3

    const/4 v10, 0x0

    .line 629
    :goto_d
    invoke-virtual {v9}, Lcom/amazon/kindle/content/ContentMetadata;->getParentAsin()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_14

    move-object/from16 v22, v4

    .line 630
    invoke-virtual {v8}, Lcom/amazon/kindle/content/ContentMetadata;->getParentAsin()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    const/4 v4, 0x1

    goto :goto_e

    :cond_14
    move-object/from16 v22, v4

    :cond_15
    const/4 v4, 0x0

    .line 631
    :goto_e
    invoke-virtual {v9}, Lcom/amazon/kindle/content/ContentMetadata;->getOriginType()Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_16

    move-object/from16 v23, v5

    invoke-virtual {v9}, Lcom/amazon/kindle/content/ContentMetadata;->getOriginType()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v24, v6

    invoke-virtual {v8}, Lcom/amazon/kindle/content/ContentMetadata;->getOriginType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_17

    const/4 v5, 0x1

    goto :goto_f

    :cond_16
    move-object/from16 v23, v5

    move-object/from16 v24, v6

    :cond_17
    const/4 v5, 0x0

    .line 632
    :goto_f
    invoke-virtual {v9}, Lcom/amazon/kindle/content/ContentMetadata;->getShareOriginId()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_18

    invoke-virtual {v9}, Lcom/amazon/kindle/content/ContentMetadata;->getShareOriginId()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v25, v11

    invoke-virtual {v8}, Lcom/amazon/kindle/content/ContentMetadata;->getShareOriginId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_19

    const/4 v6, 0x1

    goto :goto_10

    :cond_18
    move-object/from16 v25, v11

    :cond_19
    const/4 v6, 0x0

    .line 633
    :goto_10
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->supportsSortableColumns()Z

    move-result v11

    if-eqz v11, :cond_1a

    .line 634
    invoke-virtual {v9}, Lcom/amazon/kindle/content/ContentMetadata;->getSortableTitle()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_1a

    invoke-virtual {v9}, Lcom/amazon/kindle/content/ContentMetadata;->getSortableTitle()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8}, Lcom/amazon/kindle/content/ContentMetadata;->getSortableTitle()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1a

    const/4 v11, 0x1

    goto :goto_11

    :cond_1a
    const/4 v11, 0x0

    .line 635
    :goto_11
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->supportsSortableColumns()Z

    move-result v12

    if-eqz v12, :cond_1b

    .line 636
    invoke-virtual {v9}, Lcom/amazon/kindle/content/ContentMetadata;->getSortableAuthor()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_1b

    invoke-virtual {v9}, Lcom/amazon/kindle/content/ContentMetadata;->getSortableAuthor()Ljava/lang/String;

    move-result-object v12

    move/from16 v26, v14

    invoke-virtual {v8}, Lcom/amazon/kindle/content/ContentMetadata;->getSortableAuthor()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1c

    const/4 v14, 0x1

    goto :goto_12

    :cond_1b
    move/from16 v26, v14

    :cond_1c
    const/4 v14, 0x0

    .line 637
    :goto_12
    invoke-virtual {v9}, Lcom/amazon/kindle/content/ContentMetadata;->getPublicationDateInMillis()J

    move-result-wide v27

    const-wide/16 v29, 0x0

    cmp-long v12, v27, v29

    if-lez v12, :cond_1d

    invoke-virtual {v9}, Lcom/amazon/kindle/content/ContentMetadata;->getPublicationDateInMillis()J

    move-result-wide v27

    invoke-virtual {v8}, Lcom/amazon/kindle/content/ContentMetadata;->getPublicationDateInMillis()J

    move-result-wide v31

    cmp-long v12, v27, v31

    if-eqz v12, :cond_1d

    const/4 v12, 0x1

    goto :goto_13

    :cond_1d
    const/4 v12, 0x0

    .line 638
    :goto_13
    invoke-virtual {v8}, Lcom/amazon/kindle/content/ContentMetadata;->getDeliveryDate()J

    move-result-wide v27

    cmp-long v31, v27, v29

    if-gtz v31, :cond_1e

    invoke-virtual {v9}, Lcom/amazon/kindle/content/ContentMetadata;->getDeliveryDate()J

    move-result-wide v27

    cmp-long v31, v27, v29

    if-lez v31, :cond_1e

    move-object/from16 v28, v15

    const/16 v27, 0x1

    goto :goto_14

    :cond_1e
    move-object/from16 v28, v15

    const/16 v27, 0x0

    .line 639
    :goto_14
    invoke-virtual {v8}, Lcom/amazon/kindle/content/ContentMetadata;->getIsFalkorEpisode()Z

    move-result v15
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    move-object/from16 v29, v2

    :try_start_9
    invoke-virtual {v9}, Lcom/amazon/kindle/content/ContentMetadata;->getIsFalkorEpisode()Z

    move-result v2

    if-eq v15, v2, :cond_1f

    const/4 v2, 0x1

    goto :goto_15

    :cond_1f
    const/4 v2, 0x0

    .line 640
    :goto_15
    invoke-virtual {v8}, Lcom/amazon/kindle/content/ContentMetadata;->getContentTags()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v30, v13

    invoke-virtual {v9}, Lcom/amazon/kindle/content/ContentMetadata;->getContentTags()Ljava/lang/String;

    move-result-object v13

    invoke-static {v15, v13}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_20

    const/4 v13, 0x1

    goto :goto_16

    :cond_20
    const/4 v13, 0x0

    .line 641
    :goto_16
    invoke-virtual {v9}, Lcom/amazon/kindle/content/ContentMetadata;->getPublisher()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_21

    move-object/from16 v31, v7

    .line 642
    invoke-virtual {v8}, Lcom/amazon/kindle/content/ContentMetadata;->getPublisher()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_22

    const/4 v7, 0x1

    goto :goto_17

    :cond_21
    move-object/from16 v31, v7

    :cond_22
    const/4 v7, 0x0

    :goto_17
    if-nez v18, :cond_24

    if-nez v0, :cond_24

    if-nez v1, :cond_24

    if-nez v10, :cond_24

    if-nez v4, :cond_24

    if-nez v5, :cond_24

    if-nez v6, :cond_24

    if-nez v12, :cond_24

    if-nez v11, :cond_24

    if-nez v14, :cond_24

    if-nez v2, :cond_24

    if-nez v7, :cond_24

    if-eqz v13, :cond_23

    goto :goto_18

    :cond_23
    move-object/from16 v0, v17

    move-object/from16 v3, v29

    const/4 v1, 0x1

    const/4 v4, 0x0

    goto/16 :goto_1c

    :cond_24
    :goto_18
    move-object/from16 v32, v15

    .line 647
    new-instance v15, Landroid/content/ContentValues;

    invoke-direct {v15}, Landroid/content/ContentValues;-><init>()V

    if-eqz v18, :cond_25

    .line 649
    sget-object v18, Lcom/amazon/kindle/content/ContentMetadataField;->ARCHIVABLE:Lcom/amazon/kindle/content/ContentMetadataField;

    move/from16 v33, v7

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    move/from16 v34, v13

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v15, v7, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v7, 0x1

    .line 650
    invoke-virtual {v8, v7}, Lcom/amazon/kindle/content/ContentMetadata;->setArchivable(Z)V

    goto :goto_19

    :cond_25
    move/from16 v33, v7

    move/from16 v34, v13

    :goto_19
    if-eqz v0, :cond_26

    .line 653
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->STATE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v15, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    invoke-virtual {v9}, Lcom/amazon/kindle/content/ContentMetadata;->getState()Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/amazon/kindle/content/ContentMetadata;->setState(Lcom/amazon/kindle/model/content/ContentState;)Z

    :cond_26
    if-eqz v1, :cond_27

    .line 657
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->DICTIONARY_TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9}, Lcom/amazon/kindle/content/ContentMetadata;->getDictionaryType()Lcom/amazon/kindle/model/content/DictionaryType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    invoke-virtual {v9}, Lcom/amazon/kindle/content/ContentMetadata;->getDictionaryType()Lcom/amazon/kindle/model/content/DictionaryType;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/amazon/kindle/content/ContentMetadata;->setDictionaryType(Lcom/amazon/kindle/model/content/DictionaryType;)V

    :cond_27
    if-eqz v10, :cond_28

    .line 661
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->ARCHIVABLE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v15, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 662
    invoke-virtual {v8, v1}, Lcom/amazon/kindle/content/ContentMetadata;->setArchivable(Z)V

    :cond_28
    if-eqz v4, :cond_29

    .line 665
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->PARENT_ASIN:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 666
    invoke-virtual {v8, v3}, Lcom/amazon/kindle/content/ContentMetadata;->setParentAsin(Ljava/lang/String;)V

    :cond_29
    if-eqz v5, :cond_2a

    .line 669
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->ORIGIN_TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9}, Lcom/amazon/kindle/content/ContentMetadata;->getOriginType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 670
    invoke-virtual {v9}, Lcom/amazon/kindle/content/ContentMetadata;->getOriginType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/amazon/kindle/content/ContentMetadata;->setOriginType(Ljava/lang/String;)V

    :cond_2a
    if-eqz v6, :cond_2b

    .line 673
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->SHARE_ORIGIN_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9}, Lcom/amazon/kindle/content/ContentMetadata;->getShareOriginId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    invoke-virtual {v9}, Lcom/amazon/kindle/content/ContentMetadata;->getShareOriginId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/amazon/kindle/content/ContentMetadata;->setShareOriginId(Ljava/lang/String;)V

    :cond_2b
    if-eqz v11, :cond_2c

    .line 677
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->SORTABLE_TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9}, Lcom/amazon/kindle/content/ContentMetadata;->getSortableTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    invoke-virtual {v9}, Lcom/amazon/kindle/content/ContentMetadata;->getSortableTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/amazon/kindle/content/ContentMetadata;->setSortableTitle(Ljava/lang/String;)V

    :cond_2c
    if-eqz v14, :cond_2d

    .line 681
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->SORTABLE_AUTHOR:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9}, Lcom/amazon/kindle/content/ContentMetadata;->getSortableAuthor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    invoke-virtual {v9}, Lcom/amazon/kindle/content/ContentMetadata;->getSortableAuthor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/amazon/kindle/content/ContentMetadata;->setSortableAuthor(Ljava/lang/String;)V

    :cond_2d
    if-eqz v12, :cond_2e

    .line 685
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->PUBLICATION_DATE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9}, Lcom/amazon/kindle/content/ContentMetadata;->getPublicationDateInMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 686
    invoke-virtual {v9}, Lcom/amazon/kindle/content/ContentMetadata;->getPublicationDateInMillis()J

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Lcom/amazon/kindle/content/ContentMetadata;->setPublicationDateInMillis(J)V

    :cond_2e
    if-eqz v27, :cond_2f

    .line 689
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->DELIVERY_DATE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9}, Lcom/amazon/kindle/content/ContentMetadata;->getDeliveryDate()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 690
    invoke-virtual {v9}, Lcom/amazon/kindle/content/ContentMetadata;->getDeliveryDate()J

    move-result-wide v0

    invoke-virtual {v8, v0, v1}, Lcom/amazon/kindle/content/ContentMetadata;->setDeliveryDate(J)V

    :cond_2f
    if-eqz v2, :cond_30

    .line 693
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->IS_FALKOR_EPISODE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9}, Lcom/amazon/kindle/content/ContentMetadata;->getIsFalkorEpisode()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 694
    invoke-virtual {v9}, Lcom/amazon/kindle/content/ContentMetadata;->getIsFalkorEpisode()Z

    move-result v0

    invoke-virtual {v8, v0}, Lcom/amazon/kindle/content/ContentMetadata;->setIsFalkorEpisode(Z)V

    :cond_30
    if-eqz v34, :cond_31

    .line 697
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->CONTENT_TAGS:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9}, Lcom/amazon/kindle/content/ContentMetadata;->getContentTags()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 698
    invoke-virtual {v9}, Lcom/amazon/kindle/content/ContentMetadata;->getContentTags()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/amazon/kindle/content/ContentMetadata;->setContentTags(Ljava/lang/String;)V

    :cond_31
    if-eqz v33, :cond_32

    .line 701
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->PUBLISHER:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v1, v32

    invoke-virtual {v15, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    invoke-virtual {v8, v1}, Lcom/amazon/kindle/content/ContentMetadata;->setPublisher(Ljava/lang/String;)V

    .line 704
    :cond_32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 705
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = ?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 706
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v7, v31

    invoke-virtual {v7, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    move-object/from16 v3, v29

    move-object/from16 v5, v30

    .line 704
    :try_start_a
    invoke-virtual {v3, v5, v15, v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 707
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 708
    invoke-virtual {v15}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_33

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 709
    invoke-static {v5}, Lcom/amazon/kindle/content/ContentMetadataField;->valueOf(Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadataField;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 711
    :cond_33
    new-instance v2, Lcom/amazon/kindle/content/ContentUpdate;

    move-object/from16 v15, v28

    invoke-direct {v2, v8, v15, v0}, Lcom/amazon/kindle/content/ContentUpdate;-><init>(Lcom/amazon/kindle/content/ContentMetadata;Lcom/amazon/kindle/content/ContentMetadata;Ljava/util/Set;)V

    move-object/from16 v0, v17

    .line 712
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :catchall_3
    move-exception v0

    move-object/from16 v3, v29

    goto/16 :goto_1d

    :cond_34
    move-object/from16 v20, v0

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    move-object/from16 v25, v11

    move/from16 v26, v14

    move-object/from16 v0, v17

    goto :goto_1b

    :cond_35
    move-object/from16 v20, v0

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    move-object/from16 v24, v6

    move/from16 v26, v14

    move-object/from16 v0, v17

    move-object/from16 v25, v18

    :goto_1b
    const/4 v1, 0x1

    const/4 v4, 0x0

    move-object v3, v2

    :goto_1c
    add-int/lit8 v14, v26, 0x1

    move-object/from16 v1, p0

    move-object/from16 v17, v0

    move-object v2, v3

    move-object/from16 v0, v20

    move-object/from16 v3, v21

    move-object/from16 v4, v22

    move-object/from16 v5, v23

    move-object/from16 v6, v24

    move-object/from16 v18, v25

    const/4 v8, 0x1

    const/4 v15, 0x0

    goto/16 :goto_5

    :cond_36
    move-object v3, v2

    move-object/from16 v0, v17

    .line 717
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 719
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 722
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 723
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "End add or update metadata: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_37
    return-object v0

    :catchall_4
    move-exception v0

    goto :goto_1d

    :catchall_5
    move-exception v0

    move-object v3, v2

    .line 719
    :goto_1d
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 720
    throw v0
.end method

.method public associateUserToContent(Ljava/lang/String;Ljava/util/Collection;J)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .line 1500
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1501
    iget-object v1, p0, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1503
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1504
    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->USER_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1505
    sget-object p1, Lcom/amazon/kindle/content/ContentMetadataField;->LPR:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1506
    sget-object p1, Lcom/amazon/kindle/content/ContentMetadataField;->FPR:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1507
    sget-object p1, Lcom/amazon/kindle/content/ContentMetadataField;->LAST_ACCESSED:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {v1, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1508
    sget-object p1, Lcom/amazon/kindle/content/ContentMetadataField;->READING_PROGRESS:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v1, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1509
    sget-object p1, Lcom/amazon/kindle/content/ContentMetadataField;->MRPR:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1510
    sget-object p1, Lcom/amazon/kindle/content/ContentMetadataField;->CRP:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1511
    sget-object p1, Lcom/amazon/kindle/content/ContentMetadataField;->WAYPOINTS:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p3, "{}"

    invoke-virtual {v1, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1512
    sget-object p1, Lcom/amazon/kindle/content/ContentMetadataField;->MLT_LASTUPDATED:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {v1, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1513
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 1514
    sget-object p3, Lcom/amazon/kindle/content/ContentMetadataField;->KEY:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {p3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "UserContent"

    const/4 p3, 0x0

    const/4 p4, 0x4

    .line 1515
    invoke-virtual {v0, p2, p3, v1, p4}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    goto :goto_0

    .line 1518
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1520
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1521
    throw p1
.end method

.method public clearListOfFilesPendingDeletion(I)V
    .locals 4

    .line 2036
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2037
    iget-object v1, p0, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    :try_start_0
    const-string v1, "ROWID <= ?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 2040
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "PendingDeletes"

    .line 2042
    invoke-virtual {v0, p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2043
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2045
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2046
    throw p1
.end method

.method public clearPendingUserContentDeletes(Ljava/lang/String;I)V
    .locals 6

    .line 1993
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1994
    iget-object v1, p0, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    :try_start_0
    const-string v1, "PendingUserContentDeletes"

    .line 1996
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->USER_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "=? AND ROWID <= ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 p1, 0x1

    int-to-long v4, p2

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1997
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1999
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2000
    throw p1
.end method

.method public createFilterForBookTypes(Ljava/util/Set;)Lcom/amazon/kindle/content/filter/SQLQueryFilter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/amazon/kcp/library/models/BookType;",
            ">;)",
            "Lcom/amazon/kindle/content/filter/SQLQueryFilter;"
        }
    .end annotation

    .line 1936
    new-instance v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO$2;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kindle/content/dao/LibraryContentDAO$2;-><init>(Lcom/amazon/kindle/content/dao/LibraryContentDAO;Ljava/util/Set;)V

    return-object v0
.end method

.method public deleteAllContentByUser(Ljava/lang/String;)V
    .locals 5

    .line 1297
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1298
    iget-object v1, p0, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    :try_start_0
    const-string v1, "UserContent"

    .line 1300
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->USER_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "=?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1301
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1303
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1304
    throw p1
.end method

.method public deleteContentMetadata(Ljava/util/Collection;Ljava/lang/String;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 1248
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " AND "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->USER_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "=?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    if-nez p3, :cond_0

    .line 1252
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Lcom/amazon/kindle/content/ContentMetadataField;->KEY:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " NOT IN (SELECT "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1253
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " FROM "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "KindleContent"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " WHERE "

    .line 1254
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Lcom/amazon/kindle/content/ContentMetadataField;->KEPT:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, "="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " AND ("

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Lcom/amazon/kindle/content/ContentMetadataField;->TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1255
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, "=\'"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_MAGAZINE:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1256
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_NEWSPAPER:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "\'))"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1259
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p3

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->KEY:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p3, p2, v1, v0}, Lcom/amazon/kindle/db/Batch;->generateBatches(Ljava/util/Collection;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 1260
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/kindle/db/Batch;

    .line 1261
    iget-object p3, p0, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p3

    .line 1262
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v0, p3}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    :try_start_0
    const-string v0, "UserContent"

    .line 1264
    invoke-virtual {p2}, Lcom/amazon/kindle/db/Batch;->getWhereClause()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/amazon/kindle/db/Batch;->getBindArgs()[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, v0, v1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1265
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1267
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1268
    throw p1

    :cond_1
    return-void
.end method

.method public deleteLocalContent(Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1275
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->KEY:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {p1, v0, v1, v2, v3}, Lcom/amazon/kindle/db/Batch;->generateBatches(Ljava/util/Collection;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 1276
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1277
    iget-object v1, p0, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 1279
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/db/Batch;

    const-string v2, "LocalContent"

    .line 1280
    invoke-virtual {v1}, Lcom/amazon/kindle/db/Batch;->getWhereClause()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/amazon/kindle/db/Batch;->getBindArgs()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 1282
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1284
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1285
    throw p1
.end method

.method public duplicateUnregisteredSideloadedContent(Ljava/lang/String;)V
    .locals 9

    .line 1526
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1527
    iget-object v1, p0, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    :try_start_0
    const-string v2, "UserContent"

    const/4 v3, 0x0

    .line 1528
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/amazon/kindle/content/ContentMetadataField;->USER_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "= ? "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v6, Lcom/amazon/kcp/application/IAuthenticationManager;->DEFAULT_USER_ID:Ljava/lang/String;

    aput-object v6, v5, v1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1536
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1537
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 1538
    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->USER_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1539
    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->KEY:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/amazon/kindle/content/ContentMetadataField;->KEY:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1540
    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->LAST_ACCESSED:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/amazon/kindle/content/ContentMetadataField;->LAST_ACCESSED:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1541
    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->LPR:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/amazon/kindle/content/ContentMetadataField;->LPR:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1542
    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->MRPR:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/amazon/kindle/content/ContentMetadataField;->MRPR:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1543
    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->CRP:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/amazon/kindle/content/ContentMetadataField;->CRP:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1544
    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->WAYPOINTS:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/amazon/kindle/content/ContentMetadataField;->WAYPOINTS:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1545
    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->FPR:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/amazon/kindle/content/ContentMetadataField;->FPR:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1546
    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->MLT_LASTUPDATED:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/amazon/kindle/content/ContentMetadataField;->MLT_LASTUPDATED:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1547
    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->READING_PROGRESS:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/amazon/kindle/content/ContentMetadataField;->READING_PROGRESS:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1548
    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->IS_IN_CAROUSEL:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/amazon/kindle/content/ContentMetadataField;->IS_IN_CAROUSEL:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "UserContent"

    const/4 v4, 0x0

    const/4 v5, 0x4

    .line 1549
    invoke-virtual {v0, v3, v4, v2, v5}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    goto/16 :goto_0

    .line 1551
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    .line 1552
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 1528
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v1, :cond_1

    .line 1552
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v1

    :try_start_5
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 1553
    :try_start_6
    sget-object v1, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not duplicate sideloaded content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 1555
    :cond_2
    :goto_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :goto_3
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 1556
    throw p1
.end method

.method public getAllContentMetadata(Landroid/database/Cursor;)Ljava/util/List;
    .locals 4
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskReadViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/model/content/IListableBook;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/util/ConcurrentDataModificationException;
        }
    .end annotation

    .line 1561
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1562
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 1568
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    move-object v2, v1

    .line 1571
    :cond_1
    invoke-static {p1}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getBookType(Landroid/database/Cursor;)Lcom/amazon/kcp/library/models/BookType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kcp/library/models/BookType;->isGroup()Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez v2, :cond_2

    .line 1573
    sget-object v2, Lcom/amazon/kindle/content/dao/GroupContentDAO;->FIELDS:Ljava/util/Set;

    invoke-static {p1, v2}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->generateContentMetadataFieldIndices(Landroid/database/Cursor;Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v2

    .line 1576
    :cond_2
    iget-object v3, p0, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->groupService:Lcom/amazon/kindle/content/IGroupService;

    invoke-interface {v3, p1, v2}, Lcom/amazon/kindle/content/IGroupService;->getGroupMetadataWithItems(Landroid/database/Cursor;Ljava/util/Map;)Lcom/amazon/kindle/content/GroupMetadata;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1578
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-nez v1, :cond_4

    .line 1582
    invoke-static {p1}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->generateContentMetadataFieldIndices(Landroid/database/Cursor;)Ljava/util/Map;

    move-result-object v1

    .line 1584
    :cond_4
    invoke-virtual {p0, p1, v1}, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->getMetadata(Landroid/database/Cursor;Ljava/util/Map;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v3

    .line 1585
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1588
    :cond_5
    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_1

    return-object v0

    :catch_0
    move-exception p1

    .line 1592
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->TAG:Ljava/lang/String;

    const-string v1, "Error moving cursor to next row"

    invoke-static {v0, v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1594
    new-instance v0, Lcom/amazon/kindle/util/ConcurrentDataModificationException;

    invoke-direct {v0, v1, p1}, Lcom/amazon/kindle/util/ConcurrentDataModificationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getBookIds(Ljava/lang/String;Lcom/amazon/kindle/content/filter/SQLQueryFilter;)Ljava/util/Collection;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/content/filter/SQLQueryFilter;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1928
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->JOINED_KINDLECONTENT_USERCONTENT:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "KindleContent"

    :goto_0
    move-object v2, v0

    .line 1929
    invoke-direct {p0, p2, p1}, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->addUserToFilter(Lcom/amazon/kindle/content/filter/SQLQueryFilter;Ljava/lang/String;)Lcom/amazon/kindle/content/filter/SQLQueryFilter;

    move-result-object p1

    .line 1930
    invoke-interface {p1}, Lcom/amazon/kindle/content/filter/SQLQueryFilter;->getWhereClause()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Lcom/amazon/kindle/content/filter/SQLQueryFilter;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1931
    invoke-interface {p1}, Lcom/amazon/kindle/content/filter/SQLQueryFilter;->orderBy()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1}, Lcom/amazon/kindle/content/filter/SQLQueryFilter;->getLimit()Ljava/lang/String;

    move-result-object v8

    move-object v1, p0

    .line 1930
    invoke-virtual/range {v1 .. v8}, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->getBookIds(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public getBookIds(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Collection;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1908
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move-object v3, p0

    .line 1911
    :try_start_0
    iget-object v0, v3, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const/4 v0, 0x1

    new-array v6, v0, [Ljava/lang/String;

    .line 1912
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v13, 0x0

    aput-object v0, v6, v13

    move-object v5, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    invoke-virtual/range {v4 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1913
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1914
    invoke-interface {v2, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 1917
    :try_start_1
    sget-object v4, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->TAG:Ljava/lang/String;

    const-string v5, "GetBookIds - Retrieving Database/Cursor failed"

    invoke-static {v4, v5, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    .line 1920
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v1

    :goto_2
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1922
    :cond_2
    throw v0
.end method

.method public getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;
    .locals 11
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskReadViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    .line 391
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->JOINED_TABLES:Ljava/lang/String;

    .line 392
    invoke-direct {p0}, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->defaultFields()[Ljava/lang/String;

    move-result-object v1

    .line 393
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 394
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, " = ? "

    if-nez p2, :cond_0

    .line 397
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->JOINED_KINDLECONTENT_LOCALCONTENT_WITH_GROUPSITEMS:Ljava/lang/String;

    .line 398
    invoke-direct {p0}, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->kindleContentLocalContentFields()[Ljava/lang/String;

    move-result-object v1

    .line 399
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 401
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "= ? AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/amazon/kindle/content/ContentMetadataField;->USER_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 403
    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    move-object v6, p1

    move-object v4, v0

    move-object v5, v1

    .line 405
    iget-object p1, p0, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 407
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v2, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    move-object v7, p1

    check-cast v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 406
    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 408
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 409
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->getMetadata(Landroid/database/Cursor;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 411
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object p2

    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_3
    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p2

    .line 406
    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_4

    .line 411
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw v0
.end method

.method public getContentMetadata(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 429
    sget-object p2, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->JOINED_KINDLECONTENT_LOCALCONTENT_WITH_GROUPSITEMS:Ljava/lang/String;

    .line 430
    invoke-direct {p0}, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->kindleContentLocalContentFields()[Ljava/lang/String;

    move-result-object v0

    .line 431
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-static {p1, v1, v2, v3, v4}, Lcom/amazon/kindle/db/Batch;->generateBatches(Ljava/util/Collection;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    move-object v8, v0

    goto :goto_0

    .line 433
    :cond_0
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->JOINED_TABLES:Ljava/lang/String;

    .line 434
    invoke-direct {p0}, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->defaultFields()[Ljava/lang/String;

    move-result-object v1

    .line 435
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " AND "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 436
    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->USER_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "= ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    sget-object v4, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v3, p2, v4, v2}, Lcom/amazon/kindle/db/Batch;->generateBatches(Ljava/util/Collection;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    move-object p2, v0

    move-object v8, v1

    .line 440
    :goto_0
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v9

    .line 441
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 442
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/db/Batch;

    .line 443
    invoke-virtual {v0}, Lcom/amazon/kindle/db/Batch;->getWhereClause()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/amazon/kindle/db/Batch;->getBindArgs()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v9

    move-object v1, p2

    move-object v2, v8

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 444
    :goto_2
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 445
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->getMetadata(Landroid/database/Cursor;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v1

    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_1

    .line 447
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 443
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v0, :cond_3

    .line 447
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_3
    throw p2

    :cond_4
    return-object v10
.end method

.method public getContentMetadataForAllUsers(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;"
        }
    .end annotation

    .line 465
    sget-object v8, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->JOINED_TABLES:Ljava/lang/String;

    .line 466
    invoke-direct {p0}, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->defaultFields()[Ljava/lang/String;

    move-result-object v9

    .line 467
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/amazon/kindle/db/Batch;->generateBatches(Ljava/util/Collection;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 469
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    .line 470
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 471
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/db/Batch;

    .line 472
    invoke-virtual {v0}, Lcom/amazon/kindle/db/Batch;->getWhereClause()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/amazon/kindle/db/Batch;->getBindArgs()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v10

    move-object v1, v8

    move-object v2, v9

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 473
    :goto_1
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 474
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->getMetadata(Landroid/database/Cursor;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_0

    .line 476
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 472
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_2

    .line 476
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw v1

    :cond_3
    return-object v11
.end method

.method public getDictionaryFieldFromAsin(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskReadViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    const-string v0, "DictionaryInfo"

    .line 2161
    iget-object v1, p0, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, ""

    const/4 v3, 0x0

    :try_start_0
    const-string v4, "SELECT * FROM sqlite_master WHERE type = ? AND name = ? "

    const-string v5, "table"

    .line 2167
    filled-new-array {v5, v0}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2169
    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_2

    .line 2170
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "select "

    .line 2171
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2172
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " from "

    .line 2173
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2174
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " where "

    .line 2175
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2176
    sget-object p2, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " like \'%"

    .line 2177
    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2178
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "%\'"

    .line 2179
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2181
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2182
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "LiberaryContentDAO in getDictionaryFieldFromAsin() selectDictionaryInfoQuery is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2184
    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 2186
    :cond_1
    :goto_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 2187
    invoke-interface {v3, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 2188
    invoke-interface {v3, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    .line 2197
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_3
    if-eqz v4, :cond_5

    .line 2200
    :goto_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v4, v3

    goto :goto_4

    :catch_1
    move-exception p1

    move-object v4, v3

    .line 2194
    :goto_2
    :try_start_2
    sget-object p2, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Caught exception in getDictionaryFieldFromAsin() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v3, :cond_4

    .line 2197
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_4
    if-eqz v4, :cond_5

    goto :goto_1

    :cond_5
    :goto_3
    return-object v2

    :catchall_1
    move-exception p1

    :goto_4
    if-eqz v3, :cond_6

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_6
    if-eqz v4, :cond_7

    .line 2200
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 2202
    :cond_7
    throw p1
.end method

.method public getDictionaryInfoFromTable()Ljava/util/List;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;",
            ">;"
        }
    .end annotation

    const-string v0, " , "

    const-string v1, "DictionaryInfo"

    move-object/from16 v2, p0

    .line 2208
    iget-object v3, v2, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 2209
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :try_start_0
    const-string v5, "SELECT * FROM sqlite_master WHERE type = ? AND name = ? "

    const-string v6, "table"

    .line 2215
    filled-new-array {v6, v1}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 2217
    :try_start_1
    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_6

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 2224
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "select di."

    .line 2225
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2226
    sget-object v6, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    .line 2227
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2228
    sget-object v6, Lcom/amazon/kindle/content/ContentMetadataField;->SHORT_TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " , di."

    .line 2229
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2230
    sget-object v6, Lcom/amazon/kindle/content/ContentMetadataField;->DESCRIPTION:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2231
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2232
    sget-object v6, Lcom/amazon/kindle/content/ContentMetadataField;->DICTIONARY_SUBLANGUAGE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " , kc."

    .line 2233
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2234
    sget-object v6, Lcom/amazon/kindle/content/ContentMetadataField;->LANGUAGE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2235
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2236
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " from "

    .line 2237
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2238
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " di, "

    .line 2239
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "KindleContent"

    .line 2240
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " kc where di."

    .line 2241
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2242
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " =  kc."

    .line 2243
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2244
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2245
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LiberaryContentDAO in getDictionaryInfoFromTable() selectDictionaryInfoQuery is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2248
    :cond_0
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :goto_0
    move-object/from16 v21, v4

    .line 2250
    :cond_1
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    .line 2251
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2252
    sget-object v4, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2253
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 2252
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 2254
    sget-object v4, Lcom/amazon/kindle/content/ContentMetadataField;->TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2255
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 2254
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 2256
    sget-object v4, Lcom/amazon/kindle/content/ContentMetadataField;->LANGUAGE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2257
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 2256
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 2260
    invoke-static {v4}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    :goto_1
    move-object/from16 v24, v4

    goto :goto_2

    :cond_2
    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v0

    goto :goto_1

    .line 2262
    :goto_2
    sget-object v4, Lcom/amazon/kindle/content/ContentMetadataField;->DICTIONARY_SUBLANGUAGE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2264
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    .line 2263
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 2262
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 2265
    sget-object v4, Lcom/amazon/kindle/content/ContentMetadataField;->SHORT_TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2266
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 2265
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 2267
    sget-object v4, Lcom/amazon/kindle/content/ContentMetadataField;->DESCRIPTION:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2268
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 2267
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    const-string v6, "DictionaryLocale"

    const/4 v4, 0x1

    new-array v7, v4, [Ljava/lang/String;

    .line 2271
    sget-object v5, Lcom/amazon/kindle/content/ContentMetadataField;->DICTIONARY_LOCALE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2273
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2274
    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "=?"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v4, [Ljava/lang/String;

    aput-object v22, v9, v0

    move-object v4, v3

    move/from16 v5, v16

    move-object/from16 v10, v17

    move-object/from16 v11, v18

    move-object/from16 v12, v19

    move-object/from16 v13, v20

    .line 2271
    invoke-virtual/range {v4 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2276
    :try_start_3
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2277
    :cond_3
    :goto_3
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2278
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->DICTIONARY_LOCALE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2280
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    .line 2279
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 2278
    invoke-interface {v4, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2282
    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 2285
    :cond_4
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 2286
    new-instance v0, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;

    .line 2287
    invoke-static/range {v22 .. v22}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->parseForAsin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v13, 0x0

    move-object v5, v0

    move-object/from16 v7, v24

    move-object/from16 v8, v25

    move-object/from16 v10, v26

    move-object/from16 v11, v23

    move-object/from16 v12, v27

    invoke-direct/range {v5 .. v13}, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2290
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object/from16 v21, v4

    goto :goto_4

    :catch_0
    move-exception v0

    move-object/from16 v21, v4

    goto :goto_5

    :cond_5
    move-object v4, v1

    goto :goto_6

    :catchall_1
    move-exception v0

    :goto_4
    move-object v4, v1

    goto :goto_a

    :catch_1
    move-exception v0

    :goto_5
    move-object v4, v1

    goto :goto_8

    :cond_6
    move-object/from16 v21, v4

    :goto_6
    if-eqz v4, :cond_7

    .line 2299
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_7
    if-eqz v21, :cond_8

    .line 2301
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_8

    .line 2302
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    :cond_8
    if-eqz v15, :cond_b

    .line 2305
    :goto_7
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    goto :goto_9

    :catchall_2
    move-exception v0

    move-object/from16 v21, v4

    goto :goto_a

    :catch_2
    move-exception v0

    move-object/from16 v21, v4

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object v15, v4

    move-object/from16 v21, v15

    goto :goto_a

    :catch_3
    move-exception v0

    move-object v15, v4

    move-object/from16 v21, v15

    .line 2296
    :goto_8
    :try_start_4
    sget-object v1, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Caught exception in getDictionaryInfoFromTable() "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-eqz v4, :cond_9

    .line 2299
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_9
    if-eqz v21, :cond_a

    .line 2301
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2302
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    :cond_a
    if-eqz v15, :cond_b

    goto :goto_7

    :cond_b
    :goto_9
    return-object v14

    :catchall_4
    move-exception v0

    :goto_a
    if-eqz v4, :cond_c

    .line 2299
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_c
    if-eqz v21, :cond_d

    .line 2301
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_d

    .line 2302
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    :cond_d
    if-eqz v15, :cond_e

    .line 2305
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 2307
    :cond_e
    throw v0
.end method

.method public getDictionaryInfoFromTableForASIN([Ljava/lang/String;)Ljava/util/List;
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "DictionaryInfo"

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    .line 2358
    array-length v3, v0

    if-nez v3, :cond_0

    goto/16 :goto_9

    :cond_0
    move-object/from16 v3, p0

    .line 2360
    iget-object v4, v3, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v4}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    .line 2361
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    const-string v5, "SELECT * FROM sqlite_master WHERE type = ? AND name = ? "

    const-string v6, "table"

    .line 2367
    filled-new-array {v6, v1}, [Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 2369
    :try_start_1
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_7

    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    .line 2375
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "select di."

    .line 2376
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2377
    sget-object v6, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    .line 2378
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2379
    sget-object v6, Lcom/amazon/kindle/content/ContentMetadataField;->SHORT_TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " , di."

    .line 2380
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2381
    sget-object v6, Lcom/amazon/kindle/content/ContentMetadataField;->DESCRIPTION:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " , "

    .line 2382
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2383
    sget-object v6, Lcom/amazon/kindle/content/ContentMetadataField;->DICTIONARY_SUBLANGUAGE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " from "

    .line 2384
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2385
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " di "

    .line 2386
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " where di."

    .line 2387
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2388
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " IN ("

    .line 2389
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "?"

    .line 2390
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    const/4 v6, 0x1

    .line 2391
    :goto_0
    array-length v7, v0

    if-ge v6, v7, :cond_1

    const-string v7, ",?"

    .line 2392
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const-string v6, ")"

    .line 2394
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2395
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2396
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "LiberaryContentDAO in getDictionaryInfoFromTable() selectDictionaryInfoQuery is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2398
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 2400
    :cond_3
    :goto_1
    :try_start_2
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    .line 2401
    invoke-interface {v14, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 2402
    sget-object v5, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2403
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 2402
    invoke-interface {v14, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 2404
    sget-object v5, Lcom/amazon/kindle/content/ContentMetadataField;->DICTIONARY_SUBLANGUAGE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2406
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    .line 2405
    invoke-interface {v14, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 2404
    invoke-interface {v14, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    .line 2407
    sget-object v5, Lcom/amazon/kindle/content/ContentMetadataField;->SHORT_TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2408
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 2407
    invoke-interface {v14, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 2409
    sget-object v5, Lcom/amazon/kindle/content/ContentMetadataField;->DESCRIPTION:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2410
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 2409
    invoke-interface {v14, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    const-string v7, "DictionaryLocale"

    new-array v8, v1, [Ljava/lang/String;

    .line 2412
    sget-object v5, Lcom/amazon/kindle/content/ContentMetadataField;->DICTIONARY_LOCALE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2414
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v8, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2415
    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "=?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v1, [Ljava/lang/String;

    aput-object v22, v10, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v5, v4

    move/from16 v6, v17

    move-object/from16 v11, v18

    move-object/from16 v12, v19

    move-object/from16 v13, v20

    move-object/from16 v32, v14

    move-object/from16 v14, v21

    .line 2412
    :try_start_3
    invoke-virtual/range {v5 .. v14}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2417
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2418
    :cond_4
    :goto_2
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2419
    sget-object v5, Lcom/amazon/kindle/content/ContentMetadataField;->DICTIONARY_LOCALE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2421
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    .line 2420
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 2419
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 2423
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2426
    :cond_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 2427
    new-instance v5, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;

    .line 2428
    invoke-static/range {v22 .. v22}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->parseForAsin(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    const-string v25, ""

    const-string v29, ""

    const/16 v31, 0x0

    move-object/from16 v23, v5

    move-object/from16 v27, v0

    invoke-direct/range {v23 .. v31}, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2430
    invoke-interface {v15, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object/from16 v14, v32

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_6
    move-object/from16 v32, v14

    move-object v0, v2

    move-object/from16 v2, v32

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object/from16 v32, v14

    :goto_3
    move-object v1, v2

    move-object/from16 v2, v32

    goto :goto_8

    :catch_1
    move-exception v0

    move-object/from16 v32, v14

    :goto_4
    move-object v1, v2

    move-object/from16 v2, v32

    goto :goto_6

    :cond_7
    move-object v0, v2

    :goto_5
    if-eqz v2, :cond_8

    .line 2438
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_8
    if-eqz v16, :cond_9

    .line 2441
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_9
    if-eqz v0, :cond_c

    .line 2444
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_8

    :catch_2
    move-exception v0

    move-object v1, v2

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v1, v2

    move-object/from16 v16, v1

    goto :goto_8

    :catch_3
    move-exception v0

    move-object v1, v2

    move-object/from16 v16, v1

    .line 2435
    :goto_6
    :try_start_4
    sget-object v4, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Caught exception in getDictionaryInfoFromTable() "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    if-eqz v2, :cond_a

    .line 2438
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_a
    if-eqz v16, :cond_b

    .line 2441
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_b
    if-eqz v1, :cond_c

    .line 2444
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_c
    :goto_7
    return-object v15

    :catchall_4
    move-exception v0

    :goto_8
    if-eqz v2, :cond_d

    .line 2438
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_d
    if-eqz v16, :cond_e

    .line 2441
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_e
    if-eqz v1, :cond_f

    .line 2444
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2446
    :cond_f
    throw v0

    :cond_10
    :goto_9
    move-object/from16 v3, p0

    return-object v2
.end method

.method public getLatestRowIdForPendingUserContentDeletes()I
    .locals 10

    const-string v0, "MAX(ROWID)"

    .line 2005
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const-string v2, "PendingUserContentDeletes"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2010
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 2011
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 2013
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return v1

    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    const/4 v0, -0x1

    return v0

    :catchall_0
    move-exception v1

    .line 2005
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_3

    .line 2013
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v2
.end method

.method public getLocalBookIdsWithWhispersyncedAnnotations()Ljava/util/Collection;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2116
    sget-object v1, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->JOINED_KINDLECONTENT_LOCALCONTENT_WITH_GROUPSITEMS:Ljava/lang/String;

    .line 2117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " = \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK:Lcom/amazon/kcp/library/models/BookType;

    .line 2118
    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' OR "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_PDOC:Lcom/amazon/kcp/library/models/BookType;

    .line 2119
    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\') AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->KEY:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " IS NOT NULL AND "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->DICTIONARY_TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/amazon/kindle/model/content/DictionaryType;->NONE:Lcom/amazon/kindle/model/content/DictionaryType;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2122
    new-instance v8, Ljava/util/ArrayList;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->getBookIds(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v8
.end method

.method public getLocalContentByPath(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;
    .locals 9

    .line 1485
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1486
    sget-object v2, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->JOINED_TABLES:Ljava/lang/String;

    invoke-direct {p0}, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->defaultFields()[Ljava/lang/String;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/amazon/kindle/content/ContentMetadataField;->USER_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "= ? AND "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/amazon/kindle/content/ContentMetadataField;->FILE_PATH:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " = ? "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    const/4 p1, 0x1

    aput-object p2, v5, p1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 1491
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1492
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->getMetadata(Landroid/database/Cursor;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 1494
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object p2

    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p2

    .line 1486
    :try_start_1
    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz p1, :cond_3

    .line 1494
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception p1

    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw v0
.end method

.method public getLocalFilesPendingDeletion()Landroid/database/Cursor;
    .locals 10

    const/4 v0, 0x5

    new-array v3, v0, [Ljava/lang/String;

    .line 2022
    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->KEY:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2024
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v3, v1

    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->FILE_PATH:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2025
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v3, v1

    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->LAST_MODIFIED:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2026
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v3, v1

    sget-object v0, Lcom/amazon/kindle/content/ContentMetadataField;->USER_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2027
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    aput-object v0, v3, v1

    const/4 v0, 0x4

    const-string v1, "ROWID AS ROWID"

    aput-object v1, v3, v0

    const-string v2, "PendingDeletes"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, p0

    .line 2022
    invoke-virtual/range {v1 .. v9}, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getMetadata(Landroid/database/Cursor;)Lcom/amazon/kindle/content/ContentMetadata;
    .locals 1

    .line 1823
    invoke-static {p1}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->generateContentMetadataFieldIndices(Landroid/database/Cursor;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->getMetadata(Landroid/database/Cursor;Ljava/util/Map;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p1

    return-object p1
.end method

.method public getMetadata(Landroid/database/Cursor;Ljava/util/Map;)Lcom/amazon/kindle/content/ContentMetadata;
    .locals 92
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/content/ContentMetadataField;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/amazon/kindle/content/ContentMetadata;"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    .line 1601
    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-static {v1, v2}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getIndexOrThrow(Ljava/util/Map;Lcom/amazon/kindle/content/ContentMetadataField;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1602
    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->PARENT_ASIN:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-static {v1, v2}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getIndexOrThrow(Ljava/util/Map;Lcom/amazon/kindle/content/ContentMetadataField;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1603
    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->ORIGIN_TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-static {v1, v3}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getIndexOrThrow(Ljava/util/Map;Lcom/amazon/kindle/content/ContentMetadataField;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 1604
    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->SHARE_ORIGIN_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-static {v1, v3}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getIndexOrThrow(Ljava/util/Map;Lcom/amazon/kindle/content/ContentMetadataField;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 1605
    invoke-static/range {p1 .. p1}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getBookType(Landroid/database/Cursor;)Lcom/amazon/kcp/library/models/BookType;

    move-result-object v5

    .line 1606
    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->DELIVERY_DATE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-static {v1, v3}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getIndexOrThrow(Ljava/util/Map;Lcom/amazon/kindle/content/ContentMetadataField;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1607
    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->CONTENT_TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-static {v1, v3}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getIndexOrThrow(Ljava/util/Map;Lcom/amazon/kindle/content/ContentMetadataField;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 1608
    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-static {v1, v3}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getIndexOrThrow(Ljava/util/Map;Lcom/amazon/kindle/content/ContentMetadataField;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1609
    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->AUTHOR:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-static {v1, v3}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getIndexOrThrow(Ljava/util/Map;Lcom/amazon/kindle/content/ContentMetadataField;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1610
    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->PUBLISHER:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-static {v1, v3}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getIndexOrThrow(Ljava/util/Map;Lcom/amazon/kindle/content/ContentMetadataField;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1611
    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->PUBLICATION_DATE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1612
    invoke-static {v1, v3}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getIndexOrThrow(Ljava/util/Map;Lcom/amazon/kindle/content/ContentMetadataField;)I

    move-result v3

    .line 1613
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 1611
    invoke-static {v0, v3, v9, v10}, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->getLong(Landroid/database/Cursor;IJ)J

    move-result-wide v9

    .line 1614
    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->LANGUAGE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-static {v1, v3}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getIndexOrThrow(Ljava/util/Map;Lcom/amazon/kindle/content/ContentMetadataField;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 1615
    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->ARCHIVABLE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1616
    invoke-static {v1, v3}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getIndexOrThrow(Ljava/util/Map;Lcom/amazon/kindle/content/ContentMetadataField;)I

    move-result v3

    move-object/from16 v26, v2

    const/4 v2, 0x0

    .line 1615
    invoke-static {v0, v3, v2}, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->getInt(Landroid/database/Cursor;II)I

    move-result v3

    move-object/from16 v17, v11

    .line 1618
    sget-object v11, Lcom/amazon/kindle/content/ContentMetadataField;->HAS_MULTIMEDIA_CONTENT:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1619
    invoke-static {v1, v11}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getIndexOrThrow(Ljava/util/Map;Lcom/amazon/kindle/content/ContentMetadataField;)I

    move-result v11

    .line 1618
    invoke-static {v0, v11, v2}, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->getInt(Landroid/database/Cursor;II)I

    move-result v11

    .line 1621
    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->DICTIONARY_TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1622
    invoke-static {v1, v2}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getIndexOrThrow(Ljava/util/Map;Lcom/amazon/kindle/content/ContentMetadataField;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1621
    invoke-static {v2}, Lcom/amazon/kindle/model/content/DictionaryType;->valueOf(Ljava/lang/String;)Lcom/amazon/kindle/model/content/DictionaryType;

    move-result-object v2

    move/from16 v18, v11

    .line 1623
    sget-object v11, Lcom/amazon/kindle/content/ContentMetadataField;->KEPT:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-static {v1, v11}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getIndexOrThrow(Ljava/util/Map;Lcom/amazon/kindle/content/ContentMetadataField;)I

    move-result v11

    move-wide/from16 v19, v12

    const/4 v12, 0x0

    invoke-static {v0, v11, v12}, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->getInt(Landroid/database/Cursor;II)I

    move-result v11

    .line 1624
    sget-object v13, Lcom/amazon/kindle/content/ContentMetadataField;->HAS_READ_ALONG:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-static {v1, v13}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getIndexOrThrow(Ljava/util/Map;Lcom/amazon/kindle/content/ContentMetadataField;)I

    move-result v13

    invoke-static {v0, v13, v12}, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->getInt(Landroid/database/Cursor;II)I

    move-result v13

    .line 1625
    sget-object v12, Lcom/amazon/kindle/content/ContentMetadataField;->STATE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-static {v1, v12}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getIndexOrThrow(Ljava/util/Map;Lcom/amazon/kindle/content/ContentMetadataField;)I

    move-result v12

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1626
    invoke-static {v12}, Lcom/amazon/kindle/model/content/ContentState;->valueOf(Ljava/lang/String;)Lcom/amazon/kindle/model/content/ContentState;

    move-result-object v21

    .line 1627
    sget-object v12, Lcom/amazon/kindle/content/ContentMetadataField;->ERROR:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-static {v1, v12}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getIndexOrThrow(Ljava/util/Map;Lcom/amazon/kindle/content/ContentMetadataField;)I

    move-result v12

    move/from16 v22, v13

    const/4 v13, -0x1

    invoke-static {v0, v12, v13}, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->getInt(Landroid/database/Cursor;II)I

    move-result v23

    .line 1634
    :try_start_0
    sget-object v12, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_ITEM_TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-static {v1, v12}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getIndexOrThrow(Ljava/util/Map;Lcom/amazon/kindle/content/ContentMetadataField;)I

    move-result v12

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v28, v12

    goto :goto_0

    :catch_0
    const/16 v28, 0x0

    .line 1640
    :goto_0
    :try_start_1
    sget-object v12, Lcom/amazon/kindle/content/ContentMetadataField;->GROUP_POSITION_LABEL:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-static {v1, v12}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getIndexOrThrow(Ljava/util/Map;Lcom/amazon/kindle/content/ContentMetadataField;)I

    move-result v12

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const/4 v12, 0x0

    .line 1645
    :goto_1
    sget-object v13, Lcom/amazon/kindle/content/ContentMetadataField;->ERROR_MESSAGE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-static {v1, v13}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getIndexOrThrow(Ljava/util/Map;Lcom/amazon/kindle/content/ContentMetadataField;)I

    move-result v13

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .line 1647
    sget-object v13, Lcom/amazon/kindle/content/ContentMetadataField;->ERROR_TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-static {v1, v13}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getIndexOrThrow(Ljava/util/Map;Lcom/amazon/kindle/content/ContentMetadataField;)I

    move-result v13

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 1649
    sget-object v13, Lcom/amazon/kindle/content/ContentMetadataField;->ERROR_LINK_TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-static {v1, v13}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getIndexOrThrow(Ljava/util/Map;Lcom/amazon/kindle/content/ContentMetadataField;)I

    move-result v13

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .line 1651
    sget-object v13, Lcom/amazon/kindle/content/ContentMetadataField;->ERROR_LINK:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-static {v1, v13}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getIndexOrThrow(Ljava/util/Map;Lcom/amazon/kindle/content/ContentMetadataField;)I

    move-result v13

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 1653
    sget-object v13, Lcom/amazon/kindle/content/ContentMetadataField;->ERROR_CODE_CDE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-static {v1, v13}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getIndexOrThrow(Ljava/util/Map;Lcom/amazon/kindle/content/ContentMetadataField;)I

    move-result v13

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v33

    .line 1655
    sget-object v13, Lcom/amazon/kindle/content/ContentMetadataField;->ERROR_DISPLAY_STATUS_CDE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1656
    invoke-static {v1, v13}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getIndexOrThrow(Ljava/util/Map;Lcom/amazon/kindle/content/ContentMetadataField;)I

    move-result v13

    move-object/from16 v34, v12

    const/4 v12, 0x0

    .line 1655
    invoke-static {v0, v13, v12}, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->getInt(Landroid/database/Cursor;II)I

    move-result v13

    move-object/from16 v35, v14

    .line 1659
    sget-object v14, Lcom/amazon/kindle/content/ContentMetadataField;->DOWNLOADING_FROM_REMOTE_TODO:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1660
    invoke-static {v1, v14}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getIndexOrThrow(Ljava/util/Map;Lcom/amazon/kindle/content/ContentMetadataField;)I

    move-result v14

    .line 1659
    invoke-static {v0, v14, v12}, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->getInt(Landroid/database/Cursor;II)I

    move-result v14

    move-object/from16 v36, v15

    .line 1663
    sget-object v15, Lcom/amazon/kindle/content/ContentMetadataField;->IS_MOST_RECENT_ISSUE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1664
    invoke-static {v1, v15}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getIndexOrThrow(Ljava/util/Map;Lcom/amazon/kindle/content/ContentMetadataField;)I

    move-result v15

    .line 1663
    invoke-static {v0, v15, v12}, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->getInt(Landroid/database/Cursor;II)I

    move-result v15

    move-object/from16 v37, v2

    .line 1666
    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->HAS_XRAY:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-static {v1, v2}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getIndexOrThrow(Ljava/util/Map;Lcom/amazon/kindle/content/ContentMetadataField;)I

    move-result v2

    invoke-static {v0, v2, v12}, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->getInt(Landroid/database/Cursor;II)I

    move-result v2

    .line 1667
    sget-object v12, Lcom/amazon/kindle/content/ContentMetadataField;->TITLE_PRONUNCIATION:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-static {v1, v12}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getIndexOrThrow(Ljava/util/Map;Lcom/amazon/kindle/content/ContentMetadataField;)I

    move-result v12

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v38, v12

    .line 1668
    sget-object v12, Lcom/amazon/kindle/content/ContentMetadataField;->AUTHOR_PRONUNCIATION:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-static {v1, v12}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getIndexOrThrow(Ljava/util/Map;Lcom/amazon/kindle/content/ContentMetadataField;)I

    move-result v12

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1669
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->supportsSortableColumns()Z

    move-result v39

    if-eqz v39, :cond_0

    move-object/from16 v39, v12

    sget-object v12, Lcom/amazon/kindle/content/ContentMetadataField;->SORTABLE_AUTHOR:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1670
    invoke-static {v1, v12}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getIndexOrThrow(Ljava/util/Map;Lcom/amazon/kindle/content/ContentMetadataField;)I

    move-result v12

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    :cond_0
    move-object/from16 v39, v12

    const/4 v12, 0x0

    .line 1671
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->supportsSortableColumns()Z

    move-result v40

    if-eqz v40, :cond_1

    move-object/from16 v40, v12

    sget-object v12, Lcom/amazon/kindle/content/ContentMetadataField;->SORTABLE_TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1672
    invoke-static {v1, v12}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getIndexOrThrow(Ljava/util/Map;Lcom/amazon/kindle/content/ContentMetadataField;)I

    move-result v12

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v41, v12

    goto :goto_3

    :cond_1
    move-object/from16 v40, v12

    const/16 v41, 0x0

    .line 1673
    :goto_3
    sget-object v12, Lcom/amazon/kindle/content/ContentMetadataField;->TITLE_DETAILS_JSON:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-static {v1, v12}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getIndexOrThrow(Ljava/util/Map;Lcom/amazon/kindle/content/ContentMetadataField;)I

    move-result v12

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v42, v12

    .line 1676
    sget-object v12, Lcom/amazon/kindle/content/ContentMetadataField;->CAMPAIGN:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move/from16 v43, v2

    const/4 v2, -0x1

    if-eq v12, v2, :cond_2

    .line 1678
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_2
    const/4 v2, 0x0

    .line 1684
    :goto_4
    sget-object v12, Lcom/amazon/kindle/content/ContentMetadataField;->FILE_PATH:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-interface {v1, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    move-wide/from16 v44, v9

    if-ltz v12, :cond_5

    .line 1688
    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v49

    if-eqz v49, :cond_5

    .line 1690
    sget-object v10, Lcom/amazon/kindle/content/ContentMetadataField;->LAST_MODIFIED:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-static {v1, v10}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getIndexOrThrow(Ljava/util/Map;Lcom/amazon/kindle/content/ContentMetadataField;)I

    move-result v10

    move-object v12, v7

    move-object/from16 v58, v8

    const-wide/16 v7, -0x1

    invoke-static {v0, v10, v7, v8}, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->getLong(Landroid/database/Cursor;IJ)J

    move-result-wide v50

    .line 1692
    sget-object v7, Lcom/amazon/kindle/content/ContentMetadataField;->GUID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-static {v1, v7}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getIndexOrThrow(Ljava/util/Map;Lcom/amazon/kindle/content/ContentMetadataField;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v52

    .line 1693
    sget-object v7, Lcom/amazon/kindle/content/ContentMetadataField;->WATERMARK:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-static {v1, v7}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getIndexOrThrow(Ljava/util/Map;Lcom/amazon/kindle/content/ContentMetadataField;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v53

    .line 1694
    sget-object v7, Lcom/amazon/kindle/content/ContentMetadataField;->ENCRYPTED:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-static {v1, v7}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getIndexOrThrow(Ljava/util/Map;Lcom/amazon/kindle/content/ContentMetadataField;)I

    move-result v7

    const/4 v10, 0x0

    invoke-static {v0, v7, v10}, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->getInt(Landroid/database/Cursor;II)I

    move-result v7

    const-string v8, ""

    .line 1699
    :try_start_2
    sget-object v10, Lcom/amazon/kindle/content/ContentMetadataField;->OWNERSHIP_TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-static {v1, v10}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getIndexOrThrow(Ljava/util/Map;Lcom/amazon/kindle/content/ContentMetadataField;)I

    move-result v10

    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1700
    invoke-static {v8}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 1701
    invoke-static {v8}, Lcom/amazon/kindle/model/content/ContentOwnershipType;->valueOf(Ljava/lang/String;)Lcom/amazon/kindle/model/content/ContentOwnershipType;

    move-result-object v8
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :cond_3
    const/4 v8, 0x0

    :goto_5
    move-object/from16 v59, v2

    move-object/from16 v55, v8

    goto :goto_6

    .line 1711
    :catch_2
    sget-object v10, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v59, v2

    const-string v2, "Trying to reader ownership type from db, but value is not a known type: "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v10, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 1712
    sget-object v2, Lcom/amazon/kindle/model/content/ContentOwnershipType;->Unknown:Lcom/amazon/kindle/model/content/ContentOwnershipType;

    move-object/from16 v55, v2

    .line 1715
    :goto_6
    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->FILE_SIZE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-static {v1, v2}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getIndexOrThrow(Ljava/util/Map;Lcom/amazon/kindle/content/ContentMetadataField;)I

    move-result v2

    const-wide/16 v8, -0x1

    invoke-static {v0, v2, v8, v9}, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->getLong(Landroid/database/Cursor;IJ)J

    move-result-wide v56

    .line 1716
    new-instance v2, Lcom/amazon/kindle/content/LocalContent;

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    const/16 v54, 0x1

    goto :goto_7

    :cond_4
    const/16 v54, 0x0

    :goto_7
    move-object/from16 v48, v2

    invoke-direct/range {v48 .. v57}, Lcom/amazon/kindle/content/LocalContent;-><init>(Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;ZLcom/amazon/kindle/model/content/ContentOwnershipType;J)V

    goto :goto_8

    :cond_5
    move-object/from16 v59, v2

    move-object v12, v7

    move-object/from16 v58, v8

    const/4 v2, 0x0

    .line 1722
    :goto_8
    sget-object v7, Lcom/amazon/kindle/content/ContentMetadataField;->USER_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ltz v7, :cond_7

    .line 1725
    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v61

    if-eqz v61, :cond_7

    .line 1727
    sget-object v7, Lcom/amazon/kindle/content/ContentMetadataField;->LAST_ACCESSED:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1728
    invoke-static {v1, v7}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getIndexOrThrow(Ljava/util/Map;Lcom/amazon/kindle/content/ContentMetadataField;)I

    move-result v7

    const-wide/16 v8, -0x1

    .line 1727
    invoke-static {v0, v7, v8, v9}, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->getLong(Landroid/database/Cursor;IJ)J

    move-result-wide v62

    .line 1729
    sget-object v7, Lcom/amazon/kindle/content/ContentMetadataField;->LPR:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1730
    invoke-static {v1, v7}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getIndexOrThrow(Ljava/util/Map;Lcom/amazon/kindle/content/ContentMetadataField;)I

    move-result v7

    const/4 v8, -0x1

    .line 1731
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 1729
    invoke-static {v0, v7, v9}, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->getString(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v64

    .line 1732
    sget-object v7, Lcom/amazon/kindle/content/ContentMetadataField;->FPR:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1733
    invoke-static {v1, v7}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getIndexOrThrow(Ljava/util/Map;Lcom/amazon/kindle/content/ContentMetadataField;)I

    move-result v7

    .line 1734
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 1732
    invoke-static {v0, v7, v9}, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->getString(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v65

    .line 1735
    sget-object v7, Lcom/amazon/kindle/content/ContentMetadataField;->READING_PROGRESS:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1736
    invoke-static {v1, v7}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getIndexOrThrow(Ljava/util/Map;Lcom/amazon/kindle/content/ContentMetadataField;)I

    move-result v7

    .line 1735
    invoke-static {v0, v7, v8}, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->getInt(Landroid/database/Cursor;II)I

    move-result v66

    .line 1738
    sget-object v7, Lcom/amazon/kindle/content/ContentMetadataField;->MLT_LASTUPDATED:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1739
    invoke-static {v1, v7}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getIndexOrThrow(Ljava/util/Map;Lcom/amazon/kindle/content/ContentMetadataField;)I

    move-result v7

    const-wide/16 v8, -0x1

    .line 1738
    invoke-static {v0, v7, v8, v9}, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->getLong(Landroid/database/Cursor;IJ)J

    move-result-wide v67

    .line 1741
    sget-object v7, Lcom/amazon/kindle/content/ContentMetadataField;->IS_IN_CAROUSEL:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1742
    invoke-static {v1, v7}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getIndexOrThrow(Ljava/util/Map;Lcom/amazon/kindle/content/ContentMetadataField;)I

    move-result v7

    const/4 v8, 0x1

    .line 1741
    invoke-static {v0, v7, v8}, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->getInt(Landroid/database/Cursor;II)I

    move-result v7

    if-ne v7, v8, :cond_6

    const/16 v69, 0x1

    goto :goto_9

    :cond_6
    const/16 v69, 0x0

    .line 1744
    :goto_9
    sget-object v7, Lcom/amazon/kindle/content/ContentMetadataField;->MRPR:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1745
    invoke-static {v1, v7}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getIndexOrThrow(Ljava/util/Map;Lcom/amazon/kindle/content/ContentMetadataField;)I

    move-result v7

    const/4 v8, -0x1

    .line 1746
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 1744
    invoke-static {v0, v7, v9}, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->getString(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v70

    .line 1747
    sget-object v7, Lcom/amazon/kindle/content/ContentMetadataField;->CRP:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1748
    invoke-static {v1, v7}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getIndexOrThrow(Ljava/util/Map;Lcom/amazon/kindle/content/ContentMetadataField;)I

    move-result v7

    .line 1749
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 1747
    invoke-static {v0, v7, v8}, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->getString(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v71

    .line 1750
    sget-object v7, Lcom/amazon/kindle/content/ContentMetadataField;->WAYPOINTS:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1751
    invoke-static {v1, v7}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getIndexOrThrow(Ljava/util/Map;Lcom/amazon/kindle/content/ContentMetadataField;)I

    move-result v7

    const-string/jumbo v8, "{}"

    .line 1750
    invoke-static {v0, v7, v8}, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->getString(Landroid/database/Cursor;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v72

    .line 1753
    sget-object v7, Lcom/amazon/kindle/content/ContentMetadataField;->CLIPPING_BALANCE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1754
    invoke-static {v1, v7}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getIndexOrThrow(Ljava/util/Map;Lcom/amazon/kindle/content/ContentMetadataField;)I

    move-result v7

    const-wide/16 v8, 0x0

    .line 1753
    invoke-static {v0, v7, v8, v9}, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->getLong(Landroid/database/Cursor;IJ)J

    move-result-wide v73

    .line 1755
    new-instance v7, Lcom/amazon/kindle/content/UserContent;

    move-object/from16 v60, v7

    invoke-direct/range {v60 .. v74}, Lcom/amazon/kindle/content/UserContent;-><init>(Ljava/lang/String;JIIIJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    move-object/from16 v24, v7

    goto :goto_a

    :cond_7
    const/16 v24, 0x0

    .line 1760
    :goto_a
    invoke-static/range {p1 .. p1}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getAsinCount(Landroid/database/Cursor;)I

    move-result v9

    .line 1761
    sget-object v7, Lcom/amazon/kindle/content/ContentMetadataField;->EXTENDED_METADATA:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-static {v1, v7}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getIndexOrThrow(Ljava/util/Map;Lcom/amazon/kindle/content/ContentMetadataField;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1762
    const-class v7, Lcom/amazon/kindle/krx/content/IBook$ReadState;

    sget-object v8, Lcom/amazon/kindle/content/ContentMetadataField;->READ_STATE:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1763
    invoke-static {v1, v8}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getIndexOrThrow(Ljava/util/Map;Lcom/amazon/kindle/content/ContentMetadataField;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1762
    invoke-static {v7, v8}, Lcom/google/common/base/Enums;->getIfPresent(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/base/Optional;

    move-result-object v7

    sget-object v8, Lcom/amazon/kindle/krx/content/IBook$ReadState;->UNREAD:Lcom/amazon/kindle/krx/content/IBook$ReadState;

    .line 1763
    invoke-virtual {v7, v8}, Lcom/google/common/base/Optional;->or(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/amazon/kindle/krx/content/IBook$ReadState;

    .line 1764
    const-class v7, Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;

    move-object/from16 v25, v8

    sget-object v8, Lcom/amazon/kindle/content/ContentMetadataField;->READ_STATE_ORIGIN:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1765
    invoke-static {v1, v8}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getIndexOrThrow(Ljava/util/Map;Lcom/amazon/kindle/content/ContentMetadataField;)I

    move-result v8

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1764
    invoke-static {v7, v8}, Lcom/google/common/base/Enums;->getIfPresent(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/base/Optional;

    move-result-object v7

    sget-object v8, Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;->OTHER:Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;

    .line 1765
    invoke-virtual {v7, v8}, Lcom/google/common/base/Optional;->or(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;

    .line 1766
    sget-object v7, Lcom/amazon/kindle/content/ContentMetadataField;->IS_FALKOR_EPISODE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-static {v1, v7}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getIndexOrThrow(Ljava/util/Map;Lcom/amazon/kindle/content/ContentMetadataField;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    move/from16 v46, v7

    .line 1767
    sget-object v7, Lcom/amazon/kindle/content/ContentMetadataField;->IS_HIDDEN:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-static {v1, v7}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getIndexOrThrow(Ljava/util/Map;Lcom/amazon/kindle/content/ContentMetadataField;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    move/from16 v47, v7

    .line 1770
    sget-object v7, Lcom/amazon/kindle/content/ContentMetadataField;->IS_COMIC:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-static {v1, v7}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getIndexOrThrow(Ljava/util/Map;Lcom/amazon/kindle/content/ContentMetadataField;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 1772
    new-instance v0, Lcom/amazon/kindle/content/ContentMetadata;

    move/from16 v48, v9

    const/4 v9, 0x1

    if-ne v11, v9, :cond_8

    const/16 v49, 0x1

    goto :goto_b

    :cond_8
    const/16 v49, 0x0

    :goto_b
    if-ne v3, v9, :cond_9

    const/16 v50, 0x1

    goto :goto_c

    :cond_9
    const/16 v50, 0x0

    :goto_c
    if-ne v13, v9, :cond_a

    const/16 v51, 0x1

    goto :goto_d

    :cond_a
    const/16 v51, 0x0

    :goto_d
    if-ne v14, v9, :cond_b

    const/16 v52, 0x1

    goto :goto_e

    :cond_b
    const/16 v52, 0x0

    :goto_e
    if-ne v15, v9, :cond_c

    const/16 v53, 0x1

    goto :goto_f

    :cond_c
    const/16 v53, 0x0

    :goto_f
    move-object v3, v0

    move v13, v7

    move/from16 v15, v46

    move/from16 v14, v47

    move-object v7, v12

    move-object v11, v8

    move-object/from16 v12, v25

    move-object/from16 v8, v58

    move-object/from16 v76, v10

    move/from16 v75, v48

    const/4 v1, 0x1

    const/16 v27, 0x0

    move-wide/from16 v9, v44

    move-object/from16 v79, v11

    move-object/from16 v77, v17

    move/from16 v78, v18

    move-object/from16 v11, v16

    move-object/from16 v87, v12

    move-wide/from16 v80, v19

    move-object/from16 v88, v34

    move-object/from16 v82, v38

    move-object/from16 v83, v39

    move-object/from16 v84, v40

    move-object/from16 v85, v41

    move-object/from16 v86, v42

    move/from16 v12, v49

    move/from16 v89, v13

    move/from16 v1, v22

    move/from16 v13, v50

    move/from16 v34, v1

    move/from16 v90, v14

    move-object/from16 v1, v35

    move/from16 v14, v23

    move/from16 v91, v15

    move-object/from16 v1, v36

    move-object/from16 v15, v29

    move-object/from16 v16, v30

    move-object/from16 v17, v32

    move-object/from16 v18, v31

    move-object/from16 v19, v33

    move/from16 v20, v51

    move-object/from16 v22, v2

    move-object/from16 v23, v24

    move/from16 v24, v52

    move/from16 v25, v53

    invoke-direct/range {v3 .. v25}, Lcom/amazon/kindle/content/ContentMetadata;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/amazon/kindle/model/content/ContentState;Lcom/amazon/kindle/content/LocalContent;Lcom/amazon/kindle/content/UserContent;ZZ)V

    move-object/from16 v2, v26

    .line 1776
    invoke-virtual {v0, v2}, Lcom/amazon/kindle/content/ContentMetadata;->setParentAsin(Ljava/lang/String;)V

    .line 1777
    invoke-virtual {v0, v1}, Lcom/amazon/kindle/content/ContentMetadata;->setOriginType(Ljava/lang/String;)V

    move-object/from16 v1, v35

    .line 1778
    invoke-virtual {v0, v1}, Lcom/amazon/kindle/content/ContentMetadata;->setShareOriginId(Ljava/lang/String;)V

    move/from16 v1, v34

    const/4 v2, 0x1

    if-ne v1, v2, :cond_d

    const/4 v12, 0x1

    goto :goto_10

    :cond_d
    const/4 v12, 0x0

    .line 1779
    :goto_10
    invoke-virtual {v0, v12}, Lcom/amazon/kindle/content/ContentMetadata;->setHasReadAloneTitle(Z)V

    move-object/from16 v1, v77

    .line 1780
    invoke-virtual {v0, v1}, Lcom/amazon/kindle/content/ContentMetadata;->setContentType(Ljava/lang/String;)V

    move/from16 v1, v43

    if-ne v1, v2, :cond_e

    const/4 v12, 0x1

    goto :goto_11

    :cond_e
    const/4 v12, 0x0

    .line 1781
    :goto_11
    invoke-virtual {v0, v12}, Lcom/amazon/kindle/content/ContentMetadata;->setHasXray(Z)V

    move-object/from16 v1, v82

    .line 1782
    invoke-virtual {v0, v1}, Lcom/amazon/kindle/content/ContentMetadata;->setTitlePronunciation(Ljava/lang/String;)V

    move-object/from16 v1, v83

    .line 1783
    invoke-virtual {v0, v1}, Lcom/amazon/kindle/content/ContentMetadata;->setAuthorPronunciation(Ljava/lang/String;)V

    move-object/from16 v12, v84

    .line 1784
    invoke-virtual {v0, v12}, Lcom/amazon/kindle/content/ContentMetadata;->setSortableAuthor(Ljava/lang/String;)V

    move-object/from16 v12, v85

    .line 1785
    invoke-virtual {v0, v12}, Lcom/amazon/kindle/content/ContentMetadata;->setSortableTitle(Ljava/lang/String;)V

    move-object/from16 v1, v59

    .line 1786
    invoke-virtual {v0, v1}, Lcom/amazon/kindle/content/ContentMetadata;->setCampaignSlot(Ljava/lang/String;)V

    move/from16 v1, v78

    if-ne v1, v2, :cond_f

    const/4 v12, 0x1

    goto :goto_12

    :cond_f
    const/4 v12, 0x0

    .line 1787
    :goto_12
    invoke-virtual {v0, v12}, Lcom/amazon/kindle/content/ContentMetadata;->setHasMutlimediaContent(Z)V

    move-object/from16 v1, v37

    .line 1788
    invoke-virtual {v0, v1}, Lcom/amazon/kindle/content/ContentMetadata;->setDictionaryType(Lcom/amazon/kindle/model/content/DictionaryType;)V

    move-wide/from16 v3, v80

    .line 1789
    invoke-virtual {v0, v3, v4}, Lcom/amazon/kindle/content/ContentMetadata;->setDeliveryDate(J)V

    move/from16 v1, v89

    if-ne v1, v2, :cond_10

    const/4 v12, 0x1

    goto :goto_13

    :cond_10
    const/4 v12, 0x0

    .line 1790
    :goto_13
    invoke-virtual {v0, v12}, Lcom/amazon/kindle/content/ContentMetadata;->setIsComic(Z)V

    move-object/from16 v1, v86

    .line 1791
    invoke-virtual {v0, v1}, Lcom/amazon/kindle/content/ContentMetadata;->setTitleDetailsJson(Ljava/lang/String;)V

    .line 1792
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->CONTENT_TAGS:Lcom/amazon/kindle/content/ContentMetadataField;

    move-object/from16 v2, p2

    const/4 v3, 0x1

    invoke-static {v2, v1}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getIndexOrThrow(Ljava/util/Map;Lcom/amazon/kindle/content/ContentMetadataField;)I

    move-result v1

    move-object v4, v0

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/amazon/kindle/content/ContentMetadata;->setContentTags(Ljava/lang/String;)V

    move/from16 v1, v91

    if-ne v1, v3, :cond_11

    const/4 v12, 0x1

    goto :goto_14

    :cond_11
    const/4 v12, 0x0

    .line 1794
    :goto_14
    invoke-virtual {v4, v12}, Lcom/amazon/kindle/content/ContentMetadata;->setIsFalkorEpisode(Z)V

    move/from16 v1, v90

    if-ne v1, v3, :cond_12

    goto :goto_15

    :cond_12
    const/4 v3, 0x0

    .line 1795
    :goto_15
    invoke-virtual {v4, v3}, Lcom/amazon/kindle/content/ContentMetadata;->setIsHidden(Z)V

    move/from16 v1, v75

    .line 1796
    invoke-virtual {v4, v1}, Lcom/amazon/kindle/content/ContentMetadata;->setAsinCount(I)V

    .line 1797
    invoke-static/range {v28 .. v28}, Lcom/amazon/kcp/library/models/SeriesGroupType;->fromString(Ljava/lang/String;)Lcom/amazon/kcp/library/models/SeriesGroupType;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/amazon/kindle/content/ContentMetadata;->setGroupType(Lcom/amazon/kcp/library/models/SeriesGroupType;)V

    move-object/from16 v12, v88

    .line 1798
    invoke-virtual {v4, v12}, Lcom/amazon/kindle/content/ContentMetadata;->setGroupItemPosition(Ljava/lang/String;)V

    .line 1801
    :try_start_3
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->SERIES_ORDER_TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-static {v2, v1}, Lcom/amazon/kindle/content/dao/CursorFieldHelper;->getIndexOrThrow(Ljava/util/Map;Lcom/amazon/kindle/content/ContentMetadataField;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/library/models/SeriesOrderType;->fromString(Ljava/lang/String;)Lcom/amazon/kcp/library/models/SeriesOrderType;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_16

    .line 1804
    :catch_3
    sget-object v0, Lcom/amazon/kcp/library/models/SeriesOrderType;->UNORDERED:Lcom/amazon/kcp/library/models/SeriesOrderType;

    .line 1806
    :goto_16
    invoke-virtual {v4, v0}, Lcom/amazon/kindle/content/ContentMetadata;->setSeriesOrderType(Lcom/amazon/kcp/library/models/SeriesOrderType;)V

    move-object/from16 v0, v76

    if-eqz v0, :cond_13

    .line 1808
    new-instance v1, Lcom/amazon/kindle/content/ExtendedMetadataWrapper;

    invoke-direct {v1, v0}, Lcom/amazon/kindle/content/ExtendedMetadataWrapper;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lcom/amazon/kindle/content/ContentMetadata;->setExtendedMetadata(Lcom/amazon/kindle/content/ExtendedMetadataWrapper;)V

    .line 1810
    :cond_13
    invoke-virtual {v4}, Lcom/amazon/kindle/content/ContentMetadata;->getReadData()Lcom/amazon/kindle/content/ReadData;

    move-result-object v0

    move-object/from16 v7, v87

    invoke-virtual {v0, v7}, Lcom/amazon/kindle/content/ReadData;->setReadState(Lcom/amazon/kindle/krx/content/IBook$ReadState;)V

    .line 1811
    invoke-virtual {v4}, Lcom/amazon/kindle/content/ContentMetadata;->getReadData()Lcom/amazon/kindle/content/ReadData;

    move-result-object v0

    move-object/from16 v7, v79

    invoke-virtual {v0, v7}, Lcom/amazon/kindle/content/ReadData;->setReadStateOrigin(Lcom/amazon/kindle/content/ReadData$ReadStateOrigin;)V

    return-object v4
.end method

.method public getOwners(Ljava/lang/String;)Ljava/util/Collection;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1331
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1332
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1334
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1335
    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->KEY:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " = ?"

    .line 1336
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    .line 1337
    sget-object v5, Lcom/amazon/kindle/content/ContentMetadataField;->USER_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1338
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 1339
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v7, v3, [Ljava/lang/String;

    aput-object p1, v7, v6

    const-string v2, "UserContent"

    const/4 v6, 0x0

    const/4 p1, 0x0

    const/4 v8, 0x0

    move-object v3, v4

    move-object v4, v5

    move-object v5, v7

    move-object v7, p1

    .line 1337
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 1341
    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1342
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->USER_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1343
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 1342
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1344
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 1346
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :catchall_0
    move-exception v0

    .line 1337
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p1, :cond_2

    .line 1346
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v1
.end method

.method public getPendingUserContentDeletes(I)Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1970
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/String;

    .line 1971
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->KEY:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1973
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v11, 0x0

    aput-object v1, v4, v11

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->USER_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1974
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    const/4 v12, 0x1

    aput-object v1, v4, v12

    new-array v6, v12, [Ljava/lang/String;

    .line 1976
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v11

    const-string v3, "PendingUserContentDeletes"

    const-string v5, "ROWID <= ?"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v2, p0

    .line 1971
    invoke-virtual/range {v2 .. v10}, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 1977
    :goto_0
    :try_start_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1978
    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1979
    invoke-interface {p1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1980
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    if-nez v3, :cond_0

    .line 1982
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1983
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1985
    :cond_0
    invoke-interface {v3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 1987
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0

    :catchall_0
    move-exception v0

    .line 1971
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p1, :cond_3

    .line 1987
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    invoke-virtual {v0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v1
.end method

.method public getSharedLocalArchivableAndPSNLContents(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1309
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1312
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x1

    .line 1313
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    sget-object v4, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_PSNL:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v4}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    sget-object v4, Lcom/amazon/kindle/model/content/ContentState;->LOCAL:Lcom/amazon/kindle/model/content/ContentState;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v2, v6

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sget-object v4, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 1314
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AND ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/amazon/kindle/content/ContentMetadataField;->ARCHIVABLE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "=? OR "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/amazon/kindle/content/ContentMetadataField;->TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "=?) AND "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/amazon/kindle/content/ContentMetadataField;->STATE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " IN (?)"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1310
    invoke-static {p1, v1, v2, v4, v6}, Lcom/amazon/kindle/db/Batch;->generateBatches(Ljava/util/Collection;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 1317
    iget-object v1, p0, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1318
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/db/Batch;

    new-array v8, v3, [Ljava/lang/String;

    .line 1319
    sget-object v4, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v5

    .line 1320
    invoke-virtual {v2}, Lcom/amazon/kindle/db/Batch;->getWhereClause()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lcom/amazon/kindle/db/Batch;->getBindArgs()[Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v7, "KindleContent"

    move-object v6, v1

    .line 1319
    invoke-virtual/range {v6 .. v13}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 1321
    :goto_1
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1322
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1323
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_0

    .line 1325
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1319
    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz v2, :cond_2

    .line 1325
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v1

    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw v0

    :cond_3
    return-object v0
.end method

.method public getUserIds()Ljava/util/Collection;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2051
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2052
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    .line 2055
    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->USER_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v11, 0x0

    aput-object v2, v4, v11

    const/4 v2, 0x1

    const-string v3, "UserContent"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 2062
    invoke-virtual/range {v1 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2064
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2065
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2066
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 2069
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    return-object v0

    :catchall_0
    move-exception v0

    .line 2062
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v1, :cond_3

    .line 2069
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v2
.end method

.method public hasExternalContent()Z
    .locals 8

    .line 2495
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2497
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2498
    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " = ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " OR "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2499
    sget-object v4, Lcom/amazon/kindle/content/ContentMetadataField;->TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2500
    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " LIKE ?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2503
    :try_start_0
    sget-object v2, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->JOINED_TABLES:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    sget-object v4, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_PDOC:Lcom/amazon/kcp/library/models/BookType;

    .line 2504
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_PSNL:Lcom/amazon/kcp/library/models/BookType;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const/4 v4, 0x2

    const-string v7, "SDLDID0%"

    aput-object v7, v3, v4

    .line 2503
    invoke-static {v0, v2, v1, v3}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    return v6

    :cond_0
    return v5

    :catchall_0
    move-exception v0

    .line 2513
    throw v0
.end method

.method public insertDictionaryInfoToTable(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;",
            ">;)V"
        }
    .end annotation

    const-string v0, "DictionaryInfo"

    if-eqz p1, :cond_4

    .line 2313
    iget-object v1, p0, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 2314
    iget-object v2, p0, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v2, v1}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    const-string v2, "SELECT * FROM sqlite_master WHERE type = ? AND name = ? "

    :try_start_0
    const-string v3, "table"

    .line 2316
    filled-new-array {v3, v0}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 2319
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 2320
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;

    .line 2321
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 2322
    new-instance v5, Lcom/amazon/kcp/library/models/internal/AmznBookID;

    invoke-virtual {v3}, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->getAsin()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK:Lcom/amazon/kcp/library/models/BookType;

    invoke-direct {v5, v6, v7}, Lcom/amazon/kcp/library/models/internal/AmznBookID;-><init>(Ljava/lang/String;Lcom/amazon/kcp/library/models/BookType;)V

    .line 2323
    invoke-virtual {v5}, Lcom/amazon/kcp/library/models/internal/AmznBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v5

    .line 2324
    sget-object v6, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2325
    sget-object v6, Lcom/amazon/kindle/content/ContentMetadataField;->DESCRIPTION:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    .line 2326
    invoke-virtual {v3}, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->getContentDescription()Ljava/lang/String;

    move-result-object v7

    .line 2325
    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2327
    sget-object v6, Lcom/amazon/kindle/content/ContentMetadataField;->DICTIONARY_SUBLANGUAGE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    .line 2328
    invoke-virtual {v3}, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->getSubLanguage()Ljava/lang/String;

    move-result-object v7

    .line 2327
    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2329
    sget-object v6, Lcom/amazon/kindle/content/ContentMetadataField;->SHORT_TITLE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v6}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v6

    .line 2330
    invoke-virtual {v3}, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->getLanguageString()Ljava/lang/String;

    move-result-object v7

    .line 2329
    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x5

    const/4 v7, 0x0

    .line 2332
    invoke-virtual {v1, v0, v7, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    .line 2335
    invoke-virtual {v3}, Lcom/amazon/kcp/library/dictionary/internal/DictionaryDefinition;->getMarketplace()Ljava/util/List;

    move-result-object v3

    .line 2336
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 2337
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 2338
    sget-object v9, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2339
    sget-object v9, Lcom/amazon/kindle/content/ContentMetadataField;->DICTIONARY_LOCALE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v9, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "DictionaryLocale"

    .line 2340
    invoke-virtual {v1, v4, v7, v8, v6}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    goto :goto_0

    .line 2345
    :cond_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_3

    .line 2346
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 2316
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    if-eqz v2, :cond_2

    .line 2346
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v2

    :try_start_5
    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 2347
    :try_start_6
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not duplicate insertDictionaryInfoToTable content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 2349
    :cond_3
    :goto_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_4

    :goto_3
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2350
    throw p1

    :cond_4
    :goto_4
    return-void
.end method

.method public insertToPendingTable(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 3

    .line 2135
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2136
    iget-object v1, p0, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2137
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LiberaryContentDAO insertToPendingTable() method key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " filePath "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " lastModified "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2141
    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2142
    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->KEY:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2143
    sget-object p1, Lcom/amazon/kindle/content/ContentMetadataField;->FILE_PATH:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2144
    sget-object p1, Lcom/amazon/kindle/content/ContentMetadataField;->LAST_MODIFIED:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2145
    sget-object p1, Lcom/amazon/kindle/content/ContentMetadataField;->USER_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    if-nez p5, :cond_1

    const-string p5, ""

    :cond_1
    invoke-virtual {v1, p1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "PendingDeletes"

    const/4 p2, 0x0

    .line 2146
    invoke-virtual {v0, p1, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 2147
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2149
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2150
    throw p1
.end method

.method public listContent(Ljava/lang/String;Lcom/amazon/kindle/content/filter/ContentMetadataFilter;)Ljava/util/Collection;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/content/filter/ContentMetadataFilter;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;"
        }
    .end annotation

    .line 1360
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1361
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1362
    :try_start_0
    sget-object v2, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->JOINED_TABLES:Ljava/lang/String;

    invoke-direct {p0}, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->defaultFields()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1363
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1364
    invoke-virtual {p0, v1}, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->getMetadata(Landroid/database/Cursor;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v2

    if-eqz p1, :cond_1

    .line 1365
    invoke-virtual {v2}, Lcom/amazon/kindle/content/ContentMetadata;->getOwner()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1366
    :cond_1
    invoke-interface {p2, v2}, Lcom/amazon/kindle/content/filter/ContentMetadataFilter;->isFiltered(Lcom/amazon/kindle/content/ContentMetadata;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1367
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_4

    .line 1371
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 1362
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p2

    if-eqz v1, :cond_3

    .line 1371
    :try_start_4
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v1

    :try_start_5
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw p2
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p1

    .line 1374
    sget-object p2, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->TAG:Ljava/lang/String;

    const-string v1, "Error querying meta data"

    invoke-static {p2, v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception p1

    .line 1372
    sget-object p2, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->TAG:Ljava/lang/String;

    const-string v1, "Error while creating/using cursor"

    invoke-static {p2, v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    return-object v0
.end method

.method public listContent(Ljava/lang/String;Lcom/amazon/kindle/content/filter/SQLQueryFilter;)Ljava/util/Collection;
    .locals 11
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskReadViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/content/filter/SQLQueryFilter;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;"
        }
    .end annotation

    .line 1410
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->JOINED_TABLES:Ljava/lang/String;

    .line 1411
    invoke-direct {p0}, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->defaultFields()[Ljava/lang/String;

    move-result-object v1

    if-nez p1, :cond_0

    .line 1413
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->JOINED_KINDLECONTENT_LOCALCONTENT_WITH_GROUPSITEMS:Ljava/lang/String;

    .line 1414
    invoke-direct {p0}, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->kindleContentLocalContentFields()[Ljava/lang/String;

    move-result-object v1

    :cond_0
    move-object v3, v0

    move-object v4, v1

    .line 1417
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 1418
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1419
    invoke-direct {p0, p2, p1}, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->addUserToFilter(Lcom/amazon/kindle/content/filter/SQLQueryFilter;Ljava/lang/String;)Lcom/amazon/kindle/content/filter/SQLQueryFilter;

    move-result-object p1

    .line 1421
    :try_start_0
    invoke-interface {p1}, Lcom/amazon/kindle/content/filter/SQLQueryFilter;->getWhereClause()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Lcom/amazon/kindle/content/filter/SQLQueryFilter;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1422
    invoke-interface {p1}, Lcom/amazon/kindle/content/filter/SQLQueryFilter;->orderBy()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1}, Lcom/amazon/kindle/content/filter/SQLQueryFilter;->getLimit()Ljava/lang/String;

    move-result-object v10

    .line 1420
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1423
    :goto_0
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1424
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->getMetadata(Landroid/database/Cursor;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p2

    .line 1425
    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    .line 1427
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception p2

    .line 1420
    :try_start_3
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p1, :cond_2

    .line 1427
    :try_start_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    :try_start_5
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v1
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p1

    .line 1428
    sget-object p2, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->TAG:Ljava/lang/String;

    const-string v1, "Error while creating/using cursor"

    invoke-static {p2, v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    return-object v0
.end method

.method public listContentForSearch(Ljava/lang/String;Lcom/amazon/kindle/content/filter/SQLQueryFilter;)Ljava/util/Collection;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/content/filter/SQLQueryFilter;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;"
        }
    .end annotation

    .line 2590
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->JOINED_TABLES_W_GROUP_ITEMS:Ljava/lang/String;

    .line 2591
    invoke-direct {p0}, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->defaultSearchFields()[Ljava/lang/String;

    move-result-object v1

    if-nez p1, :cond_0

    .line 2593
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->JOINED_KINDLECONTENT_LOCALCONTENT_WITH_GROUPSITEMS:Ljava/lang/String;

    .line 2594
    invoke-direct {p0}, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->kindleContentLocalContentSearchFields()[Ljava/lang/String;

    move-result-object v1

    :cond_0
    move-object v3, v0

    move-object v4, v1

    .line 2597
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 2598
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2599
    invoke-direct {p0, p2, p1}, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->addUserToFilter(Lcom/amazon/kindle/content/filter/SQLQueryFilter;Ljava/lang/String;)Lcom/amazon/kindle/content/filter/SQLQueryFilter;

    move-result-object p1

    .line 2601
    :try_start_0
    invoke-interface {p1}, Lcom/amazon/kindle/content/filter/SQLQueryFilter;->getWhereClause()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1}, Lcom/amazon/kindle/content/filter/SQLQueryFilter;->getSelectionArgs()[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 2602
    invoke-interface {p1}, Lcom/amazon/kindle/content/filter/SQLQueryFilter;->orderBy()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1}, Lcom/amazon/kindle/content/filter/SQLQueryFilter;->getLimit()Ljava/lang/String;

    move-result-object v10

    .line 2600
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2603
    :goto_0
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2604
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->getMetadata(Landroid/database/Cursor;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p2

    .line 2605
    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    .line 2607
    :try_start_2
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception p2

    .line 2600
    :try_start_3
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p1, :cond_2

    .line 2607
    :try_start_4
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p1

    :try_start_5
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v1
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p1

    .line 2608
    sget-object p2, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->TAG:Ljava/lang/String;

    const-string v1, "Error while creating/using cursor"

    invoke-static {p2, v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    return-object v0
.end method

.method public listDictionaryContent(Ljava/lang/String;Lcom/amazon/kindle/model/content/DictionaryType;)Ljava/util/Collection;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/model/content/DictionaryType;",
            ")",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            ">;"
        }
    .end annotation

    .line 1381
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 1382
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1383
    :try_start_0
    sget-object v2, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->JOINED_TABLES:Ljava/lang/String;

    invoke-direct {p0}, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->defaultFields()[Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/amazon/kindle/content/ContentMetadataField;->USER_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "= ? AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/amazon/kindle/content/ContentMetadataField;->DICTIONARY_TYPE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " = ? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    .line 1385
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 1383
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1386
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1387
    invoke-virtual {p0, p2}, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->getMetadata(Landroid/database/Cursor;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v1

    if-eqz p1, :cond_1

    .line 1388
    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getOwner()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1389
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_4

    .line 1392
    :try_start_2
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 1383
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    if-eqz p2, :cond_3

    .line 1392
    :try_start_4
    invoke-interface {p2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception p2

    :try_start_5
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v1
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p1

    .line 1395
    sget-object p2, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->TAG:Ljava/lang/String;

    const-string v1, "Error querying meta data"

    invoke-static {p2, v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception p1

    .line 1393
    sget-object p2, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->TAG:Ljava/lang/String;

    const-string v1, "Error while creating/using cursor"

    invoke-static {p2, v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    return-object v0
.end method

.method public prepopulateCoverState()V
    .locals 4

    .line 798
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 799
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->HAS_LOADED_COVER:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 800
    iget-object v1, p0, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 801
    iget-object v2, p0, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v2, v1}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    :try_start_0
    const-string v2, "KindleContent"

    const/4 v3, 0x0

    .line 803
    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 804
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 806
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 807
    throw v0
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11

    move-object v1, p0

    .line 1876
    iget-object v0, v1, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p5

    .line 1878
    :try_start_0
    invoke-virtual/range {v2 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    move-object v3, p3

    move-object v4, p4

    move-object v2, v0

    .line 1882
    invoke-direct {p0, p3, p4}, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->getFormattedExceptionMessageWithSelectionAndNullSelectionArgs(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1884
    sget-object v3, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->TAG:Ljava/lang/String;

    invoke-static {v3, v0, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1885
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public queryNumberEntries(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J
    .locals 1

    .line 1868
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 1869
    invoke-static {v0, p1, p2, p3}, Landroid/database/DatabaseUtils;->queryNumEntries(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide p1

    return-wide p1
.end method

.method public setIsInCarousel(Ljava/lang/String;Z)V
    .locals 5

    .line 2075
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2076
    iget-object v1, p0, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2078
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    if-eqz p2, :cond_0

    .line 2081
    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->IS_IN_CAROUSEL:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2083
    :cond_0
    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->IS_IN_CAROUSEL:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2086
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/amazon/kindle/content/ContentMetadataField;->KEY:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " = ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string v4, "UserContent"

    .line 2089
    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2090
    sget-object v1, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IS_IN_CAROUSEL updated in DB with status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " for book "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 2092
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2095
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2096
    throw p1
.end method

.method public supportsSortableColumns()Z
    .locals 2

    .line 2130
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$bool;->supports_sortable_columns_in_db:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public updateContentState(Ljava/util/Collection;Lcom/amazon/kindle/model/content/ContentState;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazon/kindle/model/content/ContentState;",
            ")V"
        }
    .end annotation

    .line 781
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {p1, v0, v1, v2, v3}, Lcom/amazon/kindle/db/Batch;->generateBatches(Ljava/util/Collection;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 782
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 783
    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->STATE:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    iget-object p2, p0, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    .line 785
    iget-object v1, p0, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v1, p2}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 787
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/db/Batch;

    const-string v2, "KindleContent"

    .line 788
    invoke-virtual {v1}, Lcom/amazon/kindle/db/Batch;->getWhereClause()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/amazon/kindle/db/Batch;->getBindArgs()[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v2, v0, v3, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 790
    :cond_0
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 792
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 793
    throw p1
.end method

.method public updateLocalContentKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 2519
    sget-object v0, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v4, 0x1

    aput-object p2, v2, v4

    const-string v5, "Updating local content key, oldKey: %s, newKey: %s"

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 2520
    iget-object v0, p0, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 2521
    iget-object v2, p0, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v2, v0}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 2523
    :try_start_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 2524
    sget-object v5, Lcom/amazon/kindle/content/ContentMetadataField;->KEY:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "LocalContent"

    .line 2525
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/amazon/kindle/content/ContentMetadataField;->KEY:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 2526
    invoke-virtual {v7}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " = ?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/String;

    aput-object p1, v7, v3

    .line 2525
    invoke-virtual {v0, v5, v2, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 2527
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 2528
    sget-object v5, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->TAG:Ljava/lang/String;

    const-string v6, "Updating local content key succeeded, oldKey: %s, newKey: %s, rowsAffected: %d"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v3

    aput-object p2, v7, v4

    .line 2529
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, v1

    .line 2528
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2531
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 2532
    throw p1
.end method

.method public updateMetadata(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 10
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskReadViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;,
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskWriteViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Lcom/amazon/kindle/content/ContentMetadataField;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "LocalContent"

    .line 739
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 740
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 741
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 743
    invoke-static {p3, v1, v3, v2}, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->parseFields(Ljava/util/Map;Landroid/content/ContentValues;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 744
    iget-object p3, p0, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p3

    .line 745
    iget-object v4, p0, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->dbHelper:Lcom/amazon/kindle/content/db/KindleContentDB;

    invoke-virtual {v4, p3}, Lcom/amazon/kindle/persistence/KindleDBHelper;->startTransaction(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 747
    :try_start_0
    invoke-virtual {v1}, Landroid/content/ContentValues;->size()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v7, " = ?"

    if-lez v4, :cond_0

    :try_start_1
    const-string v4, "KindleContent"

    .line 748
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/amazon/kindle/content/ContentMetadataField;->ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 749
    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v6, [Ljava/lang/String;

    aput-object p1, v9, v5

    .line 748
    invoke-virtual {p3, v4, v1, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    if-eqz p2, :cond_1

    .line 752
    invoke-virtual {v2}, Landroid/content/ContentValues;->size()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "UserContent"

    .line 753
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/amazon/kindle/content/ContentMetadataField;->KEY:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 754
    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " = ? AND "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/amazon/kindle/content/ContentMetadataField;->USER_ID:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 755
    invoke-virtual {v8}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    aput-object p1, v8, v5

    aput-object p2, v8, v6

    .line 753
    invoke-virtual {p3, v1, v2, v4, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 758
    :cond_1
    invoke-virtual {v3}, Landroid/content/ContentValues;->size()I

    move-result p2

    if-lez p2, :cond_2

    .line 760
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/kindle/content/ContentMetadataField;->KEY:Lcom/amazon/kindle/content/ContentMetadataField;

    .line 761
    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v1, v6, [Ljava/lang/String;

    aput-object p1, v1, v5

    .line 760
    invoke-virtual {p3, v0, v3, p2, v1}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    int-to-long v1, p2

    const-wide/16 v4, 0x0

    cmp-long p2, v1, v4

    if-gtz p2, :cond_2

    .line 765
    sget-object p2, Lcom/amazon/kindle/content/ContentMetadataField;->KEY:Lcom/amazon/kindle/content/ContentMetadataField;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    const/4 p2, 0x5

    .line 766
    invoke-virtual {p3, v0, p1, v3, p2}, Landroid/database/sqlite/SQLiteDatabase;->insertWithOnConflict(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;I)J

    move-result-wide p1

    cmp-long v0, p1, v4

    if-gtz v0, :cond_2

    .line 769
    sget-object p1, Lcom/amazon/kindle/content/dao/LibraryContentDAO;->TAG:Ljava/lang/String;

    const-string p2, "Failed to insert local content"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    :cond_2
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 775
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 776
    throw p1
.end method
