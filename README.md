# Spreadsheet Normalizer

A local web application for normalizing Excel spreadsheets to prepare them for databases, analytics tools, and AI applications.

## What it does

This tool automatically:
- Expands merged cells
- Detects and flattens multi-row headers
- Splits multiple tables in one sheet
- Standardizes column names
- Removes repeated headers and total rows
- Fills down context columns
- Outputs cleaned Excel files with META sheets and/or combined CSV files

## Setup

### Prerequisites

- Python 3.8 or higher
- pip (Python package manager)

### Installation

1. Install dependencies:
```bash
pip install -r requirements.txt
```

2. Run the Streamlit app:
```bash
streamlit run app_streamlit.py
```

3. Open your browser to the URL shown (typically `http://localhost:8501`)

## How to use

1. **Upload a spreadsheet**: Click "Choose an Excel file" and select a `.xlsx` file
2. **Choose output format**: Select Excel only, CSV only, or both
3. **Click "Normalize"**: The app will process your file
4. **Review results**: Check the table overview, warnings, and errors
5. **Download outputs**: Get your cleaned Excel, CSV, or JSON report

## File structure

```
Story_cleaner/
├── app_streamlit.py          # Main Streamlit web app
├── clean_for_snowflake.py    # Core normalization engine
├── requirements.txt          # Python dependencies
├── README.md                 # This file
├── .streamlit/
│   └── config.toml          # Streamlit theme configuration
├── temp_jobs/               # Temporary job folders (created automatically)
└── feedback/                # Feedback files (created automatically)
```

## Architecture

### Data flow

```
User uploads .xlsx
  ↓
Save to temp job folder (unique ID)
  ↓
Call normalize_spreadsheet()
  ↓
Process: expand_merged_cells → detect_regions → clean_sheets → analyze_types
  ↓
Return results dict with paths and metadata
  ↓
Display results dashboard
  ↓
Provide download buttons
```

### Key functions

**`clean_for_snowflake.py`:**
- `normalize_spreadsheet()`: Main function that processes spreadsheets
- `expand_merged_cells()`: Expands merged cells in Excel files
- `clean_single_sheet()`: Cleans one sheet/table
- `detect_table_regions()`: Finds multiple tables in one sheet
- `analyze_column_types()`: Recommends data types for columns

**`app_streamlit.py`:**
- Main Streamlit UI with file upload, processing, and results display
- Handles job folder creation and file management
- Provides feedback collection and Stage 2 placeholders

## Running the CLI version

The original command-line interface is still available:

```bash
python clean_for_snowflake.py
```

This will:
1. Detect Excel files in the current directory
2. Ask you to choose a file (if multiple exist)
3. Ask for output format (Excel/CSV/Both)
4. Process and save cleaned files

## Output files

### Excel output
- Contains cleaned data sheets
- Includes `META` sheet with processing details
- Includes `TYPE_ANALYSIS` sheet with column type recommendations

### CSV output
- Single file with all tables combined
- Includes `source_tab` and `source_table_id` columns

### JSON report
- Job summary with table metadata
- Warnings and errors list
- Quality flags for each table

## Troubleshooting

**App won't start:**
- Make sure all dependencies are installed: `pip install -r requirements.txt`
- Check that Python 3.8+ is being used

**Processing errors:**
- Ensure the uploaded file is a valid `.xlsx` file
- Check that the file isn't corrupted or password-protected
- Review error messages in the results dashboard

**File not found errors:**
- The app creates `temp_jobs/` and `feedback/` folders automatically
- Make sure you have write permissions in the project directory

## Stage 2 (Coming next)

Future features will include:
- Direct connection to Snowflake
- Direct connection to Supabase
- Connection to other SQL databases
- Automated data upload workflows

## Development notes

- The normalization engine (`clean_for_snowflake.py`) is deterministic and does not use AI
- All errors are explicitly displayed - nothing is silently ignored
- Code includes comments for learning purposes
- The app is designed for local use only (no authentication or cloud deployment)
